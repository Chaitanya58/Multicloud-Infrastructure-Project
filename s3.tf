provider "aws" {
  region = "us-east-1"
  alias = "s3"
}

resource "aws_s3_bucket" "saru0123456" {
  bucket = "saru0123456"
  
  tags = {
    Name = "example-bucket"
  }
}
