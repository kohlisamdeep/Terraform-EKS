terraform {
  backend "s3" {
    bucket         = "samdeep-terraform-state-2026"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}