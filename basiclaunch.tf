provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test_instance" {
  ami = "ami-0636eac5d73e0e5d7"
  instance_type = "t2.micro"
  tags = {
    "Name" = "firstTFtest"
  }
}