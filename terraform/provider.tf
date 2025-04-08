terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.94.1"
    }
  }
}
#Here we want to define two exactly same configurations in 2 different AWS account

provider "aws" {
  region = "us-east-1"
}