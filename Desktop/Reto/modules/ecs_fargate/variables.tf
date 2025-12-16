variable "cluster_name" {
  description = "ECS cluster name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnets" {
  description = "Private subnets for ECS tasks"
  type        = list(string)
}

variable "alb_listener_arn" {
  description = "ALB HTTPS listener ARN"
  type        = string
}

variable "container_image" {
  description = "Docker image for the application"
  type        = string
  default     = "nginx:latest"
}

variable "container_port" {
  description = "Application container port"
  type        = number
  default     = 80
}

variable "desired_count" {
  description = "Number of ECS tasks"
  type        = number
  default     = 2
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {}
}
