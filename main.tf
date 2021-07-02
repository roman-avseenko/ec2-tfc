provider "aws" {
  region = "eu-central-1"
}

data "aws_ami" "this" {
  owners      = ["125523088429"] # Search for official CentOS8 AMI
  most_recent = true

  filter {
    name   = "name"
    values = ["CentOS 8* x86_64"]
  }
}

resource "aws_instance" "this" {
  ami           = data.aws_ami.this.id
  instance_type = "t2.micro"
}
