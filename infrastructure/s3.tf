# This code describes how to create an s3 bucket in aws

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-name"
  acl    = "private"

  tags = {
    Name        = "example-bucket"
    Environment = "production"
  }
}