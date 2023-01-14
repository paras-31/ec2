
resource "aws_s3_bucket" "b" {
  bucket = var.bucket
  acl    = var.acl
#   policy = file("policy.json")

  website {
    index_document = var.doc
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
  key    = var.doc
  source = "html/index.html"
  acl = var.acl
  content_type = "text/html"
}
