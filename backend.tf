terraform {
  backend "s3" {
    region         = "eu-central-1"
    bucket         = "tfstate-file-storage"
    key            = "ec2_state/terraform.tfstate"
    encrypt        = true
    dynamodb_table = "tfstate-file-locking"
  }
}
