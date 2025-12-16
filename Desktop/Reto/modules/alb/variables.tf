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

variable "name" {
  description = "ALB name"
  type        = string
}
variable "certificate_arn" {
  description = "ARN del certificado SSL para el listener HTTPS"
  type        = string
  default     = null # Puedes dejarlo null si no siempre se usa HTTPS
}
