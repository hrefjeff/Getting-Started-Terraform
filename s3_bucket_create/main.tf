# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}

# Create S3 bucket with versioning and encryption
resource "aws_s3_bucket" "black_hole" {
  bucket_prefix = "black-hole"
  force_destroy = true

  tags = {
    Environment = "terraform-demo"
    Purpose     = "State storage"
  }
}

# Configure versioning for the S3 bucket
resource "aws_s3_bucket_versioning" "black_hole_versioning" {
  bucket = aws_s3_bucket.black_hole.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Configure server-side encryption for the S3 bucket
resource "aws_s3_bucket_server_side_encryption_configuration" "black_hole_encryption" {
  bucket = aws_s3_bucket.black_hole.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# Block public access to the bucket
resource "aws_s3_bucket_public_access_block" "black_hole_pab" {
  bucket = aws_s3_bucket.black_hole.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
