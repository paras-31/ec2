
resource "aws_s3_bucket" "b" {
  bucket = var.bucket
  acl    = "public-read"
#   policy = file("policy.json")

  website {
    index_document = "index.html"
    # error_document = "error.html"
}
  tags = {
    Name        = var.name
    owner = var.owner
    purpose = var.purpose
  }
}

resource "aws_s3_bucket_object" "object" {
  bucket = aws_s3_bucket.b.bucket
  key    = "index.html"
  source = "index.html"
  acl = "public-read"
  content_type = "text/html"
}
