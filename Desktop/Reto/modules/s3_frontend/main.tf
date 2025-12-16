resource "aws_s3_bucket" "frontend" {
  bucket = "jfc-frontend-${random_id.this.hex}"
  tags   = var.tags
}

resource "random_id" "this" {
  byte_length = 4
}
