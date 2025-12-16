variable "vpc_id" {
  description = "VPC donde se desplegará el ALB"
  type        = string
}

variable "subnets" {
  description = "Subnets donde se desplegará el ALB"
  type        = list(string)
}

variable "tags" {
  description = "Tags comunes"
  type        = map(string)
}
