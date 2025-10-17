resource "aws_s3_bucket" "example" {
  for_each = var.buckets
  bucket   = each.value

  tags = {
    Environment = each.key
  }
}