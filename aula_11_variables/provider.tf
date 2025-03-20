terraform {
  backend "s3" {
    bucket = "buggybytes"
    key    = "aula_variables"
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
  # alias = "east"
  region = "us-east-1"
}

provider "aws" {
  alias = "west"
  region = "us-west-2"
}

resource "aws_vpc" "network-192-168-101-0-24" {
    cidr_block = "192.168.101.0/24"
}
