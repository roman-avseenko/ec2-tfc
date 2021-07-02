# AWS EC2 instance with S3 Terraform backend
## Requirements 
1. Terraform 1.0.0
2. AWS account

 - Terraform state file is storing on S3 bucket (created before) and locking via DynamoDB (also created before). More info about this type of Terraform backend [here](https://www.terraform.io/docs/language/settings/backends/s3.html).
