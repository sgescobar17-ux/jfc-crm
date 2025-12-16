output "https_listener_arn" {
  description = "HTTPS listener ARN"
  value       = try(aws_lb_listener.https[0].arn, null)
}
