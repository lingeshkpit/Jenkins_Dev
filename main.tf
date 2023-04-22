provider "aws" {
  #profile    = "default1"
  region     = "us-east-2"
  access_key = "AKIAXL7MNPPCRPLWI46F"
  secret_key = "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"
}
terraform {
  backend "s3" {
    bucket = "devopshsg1234"
    key    = "aws/terraform1.tfstate"
    region = "ap-south-1"
  }
}
resource "aws_vpc" "terraform_vpc1" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "terraform_vpc1"
  }
}
