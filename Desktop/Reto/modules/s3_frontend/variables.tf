variable "bucket_name" {
  description = "S3 bucket "
  type        = string
}

variable "domain_name" {
  description = "dominio"
  type        = string
  default     = null
}

variable "tags" {
  description = "tags"
  type        = map(string)
  default     = {}
}
