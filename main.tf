provider "aws" {
  profile    = "default"
  region     = "us-east-2"
  access_key = "AKIAXL7MNPPCSQHM4KZD"
  secret_key = "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"
}

terraform {
  backend "s3" {
    bucket = "devopshsg123"
    key    = "aws/terraform.tfstate"
    region = "ap-south-1"
  }
}
resource "aws_vpc" "terraform_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "terraform_vpc"
  }
}
