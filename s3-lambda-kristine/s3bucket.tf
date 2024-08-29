resource "aws_s3_bucket" "example" {
  bucket = "s3-lambda"
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.example.bucket
}
