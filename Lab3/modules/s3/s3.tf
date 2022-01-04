resource "aws_s3_bucket" "bucket" {
  bucket = lower("${var.bucketnameC}")
  acl    = "private"

  tags = {
    Name        = "Bucket1"
    Environment = "Dev"
  }
}