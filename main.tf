terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

# Provisioning an AWS EC2 Instance via IaC
resource "aws_instance" "my_server" {
  ami           = "ami-021aaf3749be66813" 
  instance_type = "t3.micro"

  tags = {
    Name        = "GitHub-Actions-Terraform-Server"
  }
}
