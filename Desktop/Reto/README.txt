 JFC E-Commerce – Infraestructura AWS

Este repositorio contiene la infraestructura como código (IaC) para la aplicación
e-commerce de tres capas de JFC, diseñada bajo principios de escalabilidad,
alta disponibilidad, seguridad y optimización de costos.

Arquitectura
- CloudFront + WAF
- S3 Static Frontend
- API Gateway / ALB
- ECS Fargate (microservicios)
- Lambda (bajo tráfico)
- DynamoDB / Aurora
- ElastiCache Redis
- SQS / SNS
- Observabilidad con CloudWatch

Ambientes
- dev
- prod

Despliegue

terraform init
terraform plan
terraform apply
