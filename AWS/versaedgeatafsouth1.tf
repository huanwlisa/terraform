#terraform {
#  required_providers {
#    aws = {
#      source = "hashicorp/aws"
#      version = "3.37.0"
#    }
#  }
#

provider "aws" {
  # Configuration options
  profile = "terraform"
  region = "af-south-1"
}
#provider "huawei" {
#}

#1，Create VPC
resource "aws_vpc" "af-south-1-VPC" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
}
#2，Create IGW
resource "aws_internet_gateway" "af-south-1-igw-1" {
  vpc_id = aws_vpc.af-south-1-VPC.id
}
#3，Create Custom Route Table
resource "aws_route_table" "af-south-1-rt1" {
  vpc_id = aws_vpc.af-south-1-VPC.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.af-south-1-igw-1.id
  }
}
#4,Create Subnets
resource "aws_subnet" "af-south-1-WAN" {
  cidr_block = "10.0.10.0/24"
  vpc_id = aws_vpc.af-south-1-VPC.id
#  map_public_ip_on_launch = true
  availability_zone = "af-south-1a"
  depends_on = [aws_internet_gateway.af-south-1-igw-1]
}
  resource "aws_subnet" "af-south-1-MGT" {
  cidr_block = "10.0.20.0/24"
  vpc_id = aws_vpc.af-south-1-VPC.id
#  map_public_ip_on_launch = true
  availability_zone = "af-south-1a"
  depends_on = [aws_internet_gateway.af-south-1-igw-1]

}
#5,Associate subnets with Route Table
#resource "aws_route_table_association" "rta1" {
#  route_table_id = aws_route_table.af-south-1-rt1.id
#  subnet_id = aws_subnet.af-south-1-WAN.id
#}
#resource "aws_route_table_association" "rta2" {
#  route_table_id = aws_route_table.af-south-1-rt1.id
#  subnet_id = aws_subnet.af-south-1-MGT.id
#}
#6,Create Security Group to allow ports
resource "aws_security_group" "af-south-1-allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.af-south-1-VPC.id

  ingress {
    description      = "SSH from VPC"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    }
}
#7,Create network interfaces with ip
resource "aws_network_interface" "af-south-1WAN" {
  subnet_id       = aws_subnet.af-south-1-WAN.id
  private_ips     = ["10.0.10.50"]
  security_groups = [aws_security_group.af-south-1-allow_ssh.id]

  attachment {
    instance     = aws_instance.versaedge-1.id
    device_index = 1
  }
}
resource "aws_network_interface" "af-south-1MGT" {
  subnet_id       = aws_subnet.af-south-1-MGT.id
  private_ips     = ["10.0.20.50"]
  security_groups = [aws_security_group.af-south-1-allow_ssh.id]

  attachment {
    instance     = aws_instance.versaedge-1.id
    device_index = 2
  }
}
#8,Assign EIP
resource "aws_eip" "eip1" {
  vpc = true
  network_interface = aws_network_interface.af-south-1WAN.id
  associate_with_private_ip = "10.0.10.50"
  depends_on = [aws_internet_gateway.af-south-1-igw-1]
}
resource "aws_eip" "eip2" {
  vpc = true
  network_interface = aws_network_interface.af-south-1MGT.id
  associate_with_private_ip = "10.0.20.50"
  depends_on = [aws_internet_gateway.af-south-1-igw-1]
}
#9,Create EC2
resource "aws_key_pair" "af-south-1-kp" {
  key_name = "af-south-1"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDXxoc5KLoguDqXTdezbngJrO8hP842CNzPWIF6zNJ7el0dyAOC1dvNLiKrKlqsR3NdhMOIE4qiez4pGmySANWHV3XQTGJ4re4/zUb7AYUZWo4O7Wgl177+QUP5JLQD+fqkBJViLHNoVOkAJ8k8xIhtFcgWdYy5wY19yVefM8f5WG18s7do0sif9TJp0+8MClejbPwAc/F3oBp12Cy18Rmq2IrO1MDzdvDaF2JnIZmoZGZ8miOuuA9qlL6Iqf6kvITvYSndSE3JSdwZ8poJmDr6BA6tOy8PqRWAwkexXKeCODvzZnMoY6AeOm8a8A/hIeONW/wkt17A1kMgapRSww6f potevio@DESKTOP-TL5OQGK"
}

resource "aws_instance" "versaedge-1" {
  ami = "ami-0d25afbb1fd48d235"
  instance_type = "c5.xlarge"
  key_name = "af-south-1"
  availability_zone = "af-south-1a"
#  subnet_id = aws_subnet.af-south-1-MGT.id
  vpc_security_group_ids = [aws_security_group.af-south-1-allow_ssh.id]
}
