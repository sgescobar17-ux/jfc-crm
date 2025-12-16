module "network" {
  source      = "../../modules/network"
  subnets     = module.network.public_subnets
  environment = var.environment
  vpc_cidr    = var.vpc_cidr
  tags        = local.tags
}


module "frontend_s3" {
  source = "../../modules/s3_frontend"

  bucket_name = "jfc-frontend-${var.environment}"
  domain_name = "www.jfc-ecommerce.com"
  tags        = local.tags
}

module "cloudfront" {
  source = "../../modules/cloudfront"

  bucket_name = module.frontend_s3.bucket_name
  tags        = local.tags
}

module "alb" {
  source = "../../modules/alb"

  name    = "jfc-${var.environment}"
  vpc_id  = module.network.vpc_id
  subnets = module.network.public_subnets
  tags    = local.tags
}

module "ecs" {
  source = "../../modules/ecs_fargate"

  cluster_name     = "jfc-ecs-${var.environment}"
  vpc_id           = module.network.vpc_id
  subnets          = module.network.private_subnets
  alb_listener_arn = module.alb.https_listener_arn
  tags             = local.tags
}
