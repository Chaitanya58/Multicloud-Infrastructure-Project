provider "aws" {
  region = "us-east-1"
  alias  = "ec2"
}

resource "aws_instance" "instance1" {
  ami           = "ami-00c39f71452c08778"
  instance_type = "t2.micro"
}
