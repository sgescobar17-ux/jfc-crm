module "network" {
  source      = "../../modules/network"
  vpc_cidr    = "10.0.0.0/16"
  environment = var.environment
  tags        = local.tags
}

module "frontend_s3" {
  source      = "../../modules/s3_frontend"
  domain_name = "www.jfc-ecommerce.com"
  tags        = local.tags
}

module "cloudfront" {
  source      = "../../modules/cloudfront"
  bucket_name = module.frontend_s3.bucket_name
  tags        = local.tags
}

module "alb" {
  source  = "../../modules/alb"
  vpc_id  = module.network.vpc_id
  subnets = module.network.private_subnets
  tags    = local.tags
}

module "ecs" {
  source       = "../../modules/ecs_fargate"
  cluster_name = "jfc-ecs"
  vpc_id       = module.network.vpc_id
  subnets      = module.network.private_subnets
  alb_listener = module.alb.listener_arn
  tags         = local.tags
}
