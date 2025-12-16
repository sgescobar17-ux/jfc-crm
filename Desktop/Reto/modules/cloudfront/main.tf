resource "aws_cloudfront_distribution" "this" {
  origin {
    domain_name = var.bucket_name
    origin_id   = "s3-origin"
  }

  enabled             = true
  default_root_object = "index.html"

  default_cache_behavior {
    viewer_protocol_policy = "redirect-to-https"
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    target_origin_id       = "s3-origin"
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  tags = var.tags
}
