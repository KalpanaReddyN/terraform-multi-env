terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.67.0"
    }
  }

  backend "s3" { 
    bucket = "workspace-remote-state"
    key = "workspaces"
    region = "us-east-1"
    dynamodb_table = "workspace-locking"  
  }
}

provider "aws" {
  # Configuration options 
  region = "us-east-1"
}

