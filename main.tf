# Configure the AWS Provider

provider "aws" {
  region = "us-east-1"
}

# store the terraform state file in s3

terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
  }
}
