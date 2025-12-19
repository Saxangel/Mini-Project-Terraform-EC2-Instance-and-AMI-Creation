resource "aws_instance" "Web" {
  ami           = "ami-00f46ccd1cbfb363e"
  instance_type = "t3.micro"
  security_groups = ["aws_security_group.cp_sg.name"]

  tags = {
    Name = "CloudPreneur"
  }
}

#aws_security_group
resource "aws_security_group" "cp_sg" {
  name        = "security group with terraform"
  description = "security group with terraform"
  vpc_id      = "vpc-79bd9c01"

  tags = {
    Name = "cp_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.cp_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
  description       = "HTTPS"
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv6" {
  security_group_id = aws_security_group.cp_sg.id
  cidr_ipv6         = "::/0"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
  description       = "HTTPS"
}


resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.cp_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv6" {
  security_group_id = aws_security_group.cp_sg.id
  cidr_ipv6         = "::/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}