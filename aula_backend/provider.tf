terraform {
  backend "s3" {
    bucket = "buggybytes"
    key    = "aula_backend"
    region = "us-east-1"
  }

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "network-192-168-101-0-24" {
    cidr_block = "192.168.101.0/24"
}
