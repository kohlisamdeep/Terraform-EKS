terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.30" # This pins it to a stable 5.x version
    }
  }
}

provider "aws" {
  region = var.aws_region
}