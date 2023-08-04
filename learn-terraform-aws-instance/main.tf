terraform {

  cloud {
    organization = "mfarhanz"

    workspaces {
      name = "learn-tfc-aws"
    }
  }


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {

  region  = "ap-southeast-1"
  profile = "mfarhanz"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"
}
