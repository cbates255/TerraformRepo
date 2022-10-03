provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test_instance" {
  ami = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  tags = {
    "Name" = "firstTFtest"
  }
}