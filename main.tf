terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.20.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "ec2" {
  count = "2" 
  ami           = "ami-0f5fcdfbd140e4ab7"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-ec2-${count.index + 1}"
    
  }
}

