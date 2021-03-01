terraform {
  # register global providers / plugins
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.30"
    }
  }
}

# configure the provider
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs
provider "aws" {
  profile = "ft"
  region  = "us-east-1"
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "terraform-demo" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  tags = {
    "Name" = "terraform-demo"
  }
}
