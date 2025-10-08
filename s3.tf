resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-bucket-2025-10-08"   # Bucket name must be globally unique
  acl    = "private"
}
