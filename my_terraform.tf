terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region     = "us-west-2"
  access_key = "แปะตรงนี้"
  secret_key = "แปะตรงนี้อีกอัน"
}

resource "aws_instance" "web" {
  ami           = "ami-04d9e855d716f9c99"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
