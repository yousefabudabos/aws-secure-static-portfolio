# S3 Bucket
resource "aws_s3_bucket" "portfolio" {
  bucket = var.bucket_name

  tags = {
    Project     = var.project_name
    Environment = "demo"
    ManagedBy   = "Terraform"
  }
}

# Block all public access
resource "aws_s3_bucket_public_access_block" "portfolio" {
  bucket = aws_s3_bucket.portfolio.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
