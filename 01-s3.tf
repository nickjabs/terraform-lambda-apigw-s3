#01-s3.tf
resource "aws_s3_bucket" "aws_s3_bucket" {
  bucket = var.bucket_name
}