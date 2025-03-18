terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }

  cloud {
    organization = "ACME-Corp_Demo"

    workspaces {
      name = "acme-prod-infra-aws"
    }
  }

    required_version = ">= 0.13"
}

provider "aws" {
  region = var.region
}

module "s3-webapp" {
  source  = "app.terraform.io/ACME-Corp_Demo/s3-webapp/aws"
  name   = var.name
  region = var.region
  prefix = var.prefix
  version = "1.0.0"
}


