terraform {
  /*
  backend "s3" {
    region         = "eu-central-1"
    bucket         = "tfstate-file-storage"
    key            = "ec2_state/terraform.tfstate"
    encrypt        = true
    dynamodb_table = "tfstate-file-locking"
  } */
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "faiiinttt-tf-organization"

    workspaces {
      name = "ec2-tfc"
    }
  }
}
