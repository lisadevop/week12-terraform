terraform {
  backend "s3" {
    bucket = "elise-terraform-state"
    key    = "jenkins/jenkins.tfstate"
    dynamodb_table = "terraform-lock"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.8.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}