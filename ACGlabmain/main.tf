variable "main_region" {
  type    = string
  default = "us-east-1"
}

provider "aws" {
  region = var.main_region
}

module "VPC" {
  source = "./Modules/VPC"
  region = var.main_region
}

resource "aws_instance" "my-instance" {
  ami           = module.VPC.ami_id
  subnet_id     = module.VPC.subnet_id
  instance_type = "t2.micro"
}