terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # This uses partial configuration
  # Run `terraform init -backend-config="key=black-hole.tfstate"`
  backend "s3" {

    #########################################################
    # How to configure S3 backend if not using external file
    # terraform init -backend-config="key=black-hole.tfstate"
    #########################################################

    # bucket = "black-hole20250901015630682000000001"
    # key    = "black-hole.tfstate"
    # region = "us-east-1"
    # aws_access_key_id = "<YOUR_AWS_ACCESS_KEY_ID>"
    # aws_secret_access_key = "<YOUR_AWS_SECRET_ACCESS_KEY>"

  }
}
