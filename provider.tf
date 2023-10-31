terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.22.0"
    }
  }
  backend "s3" {
    bucket         = "dme-statefile-bucket"
    region         = "us-east-1"
    key            = "dev/state/terraform.tfstate"
    dynamodb_table = "dme-statefile-table"
  }
}

provider "aws" {
  region  = "us-east-1"
}
