

output "private_subnets" {
  description = "Private subnet IDs"
  value       = aws_subnet.private[*].id
}

output "vpc_id" {
  value = aws_vpc.this.id
}
