terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket = "daws94t-remote-state"
    key    = "vpc-test"
    region = "us-east-1"
    dynamodb_table = "daws94t-locking"
  }
}


provider "aws" {
  region = "us-east-1"
}
