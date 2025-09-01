terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "black-hole20250901015630682000000001"
    # key    = "black-hole.tfstate"
    # Use following command to pass the key:
    # terraform init -backend-config="key=black-hole.tfstate"
    region = "us-east-1"
  }
}
