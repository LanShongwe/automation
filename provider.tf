terraform {
  required_version = "~>1.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0.0"
    }
  }
}

provider "aws" {
  region  = "eu-north-1"
  profile = "sts-user"

  assume_role {
    role_arn     = "arn:aws:iam::269825205881:role/stsassumerole"
    session_name = "terraform-sts"
  }
}