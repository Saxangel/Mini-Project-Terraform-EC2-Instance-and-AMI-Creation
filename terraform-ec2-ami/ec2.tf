resource "aws_instance" "CloudPreneur" {
  ami           = "ami-00f46ccd1cbfb363e"
  instance_type = "t3.micro"
  security_groups = ["aws_security_group.cp_sg.name"]

  tags = {
    Name = "CloudPreneur"
  }
}


resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main-vpc"
  }
}

#aws_security_group
resource "aws_security_group" "web_sg" {
  name   = "web-sg"
  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
