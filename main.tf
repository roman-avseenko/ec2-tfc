#terraform {
#  backend "remote" {
#    hostname     = "app.terraform.io"
#    organization = "devops-lab-test"
#  }
#}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "this" {
  ami           = "ami-0a2dc38dc30ba417e" # CentOS8 AMI
  instance_type = "t2.micro"
}
