terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.37.0"
    }
  }
}

provider "aws" {
  # Configuration options
  # assume_role {
  #   role_arn     = "arn:aws:iam::833453046644:role/stsassumerole"
  #   session_name = "terraform-sts"
  # }
  profile = "terraform"
}