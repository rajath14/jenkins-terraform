# Declaring the required provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.47.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Application  = "DBT-Instance"
    }
  }
}

