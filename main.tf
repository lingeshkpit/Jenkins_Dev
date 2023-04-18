provider "aws" {
  profile    = "default"
  region     = "us-west-1"
  access_key = "AKIAXL7MNPPCSQHM4KZD"
  secret_key = "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"
}

terraform {
  backend "s3" {
    bucket = "devopshsg1234"
    key    = "aws/terraform1.tfstate"
    region = "ap-south-1"
  }
}
resource "aws_vpc" "terraform_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "terraform_vpc"
  }
}
