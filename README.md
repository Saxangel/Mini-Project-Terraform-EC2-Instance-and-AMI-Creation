# Mini Project - Terraform EC2 Instance and AMI Creation
### Purpose:
Using Terraform to automate the creation of an EC2 instance on AWS and then create an Amazon Machine Image (AMI) from that instance.

### Objectives:
Terraform Configuration:

- Learn how to write basic Terraform configuration files : EC2 Instance Creation:

- Use Terraform to create an EC2 instance on AWS : AMI Creation:

- Automate the creation of an AMI from the created EC2 instance.

## Prerequisite
- Install Terraform on VScode
- Configure AWS Toolkit using ``AWS Configure``
![AWS CLI setup and Configuration](<AWS CLI setup and Configuration.jpg>)

### Project Tasks:
#### Task 1: Terraform Configuration for EC2 Instance
- Create a new directory for your Terraform project named **terraform-ec2-ami** using the ``mkdir`` command.
![terraform-ec2-ami](<Folder Created.jpg>)


- Inside the project directory, create two Terraform configuration files (provider.tf and ec2.tf).
![Terraform script](<Configuration files.jpg>)


- Write Terraform code to create an EC2 instance. Specifying the instance type, key pair, and security group.
![EC2 Creation](<EC2 Creation.jpg>)


- Initialize the Terraform project using the command: ``terraform init.``
![terraform init](<terraform init.jpg>)

- Use ``terraform plan`` command to check what changes will be made

- Apply the Terraform configuration to create the EC2 instance using the command: ``terraform apply``.
![alt text](<Terraform Apply.jpg>)

- To create more than one EC2, add count to the configuration
![More than One](<More than One.jpg>)
![alt text](<Five EC2.jpg>)

#### Task 2: AMI Creation
- Extend your Terraform configuration to include the creation of an AMI.
![AMI Creation](<AMI Creation.jpg>)

![EC2 Created](<EC2 Created on AWS.jpg>)

- Use provisioners in Terraform to execute commands on the EC2 instance after it's created. Install necessary packages or perform any setup required.

- Configure Terraform to create an AMI from the provisioned EC2 instance.

- Apply the updated Terraform configuration to create the AMI using the command: terraform apply.

- Destroy resources if no longer needed using the command ``terraform destroy``

### Instructions:
- A new directory is created for Terraform project using a terminal (mkdir terraform-ec2-ami).
![alt text](<New directory Created.jpg>)

- Change into the project directory (cd terraform-ec2-ami).
![alt text](<Change Directory.jpg>)


- Create a Terraform configuration files (provider.tf and main.tf).
![alt text](<Main.tf file Created.jpg>)

- Copy and paste the sample Terraform configuration template into your file.
![alt text](<Configurature template.jpg>)

- Save the file and initialize the Terraform project using terraform init.
![alt text](<Terraform Initialized.jpg>)

- Validate the configuration with the command ``terraform validate``
![terraform validate](<terraform validate.jpg>)

- Check plan to see what changes will be made ``terraform plan``
![terraform plan](<terraform plan.jpg>)

- Apply the Terraform configuration using terraform apply and confirm the creation of the EC2 instance and AMI. This is done with ``terraform apply`` command
![terraform apply](<terraform apply.jpg>)
![EC2 instance](<EC2 instance.jpg>)

- Use the ``terraform destoy`` command to clean up your resources
![terraform destroy](<terraform destroy.jpg>)

 ## Observations and Challenges:
 To get the concept is easy but more focus and critical thinking is needed. I understood why things did not work at some point while on the project.

## Thank You