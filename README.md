# AWS EC2 instance with "s3" or "remote" Terraform backend
## Requirements 
1. Terraform 1.0.0
2. AWS account

### Plan
 1. Terraform state file is storing on S3 bucket (created before) and locking via DynamoDB (also created before). More info about this type of Terraform backend [here](https://www.terraform.io/docs/language/settings/backends/s3.html).
 UPD: this config is commented out in `backend.ft` file.
 2. Terraform state is storing on Terraform cloud. More info about this type of Terraform backend [here](https://www.terraform.io/docs/language/settings/backends/remote.html) and [here](https://learn.hashicorp.com/tutorials/terraform/cloud-migrate). - Terraform state file is storing on S3 bucket (created before) and locking via DynamoDB (also created before). More info about this type of Terraform backend [here](https://www.terraform.io/docs/language/settings/backends/s3.html).
