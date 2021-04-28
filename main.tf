#terraform {
#  backend "remote" {
#    organization = "theconbox"
#
#    workspaces {
#      name = "conbox"
#    }
#  }
#}


provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "sourabh" {
  ami           = "ami-0a9d27a9f4f5c0efc"
  instance_type = "t2.micro"
  tags = {
    name = var.instance_name
  }
}




