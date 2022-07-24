module "network" {
  source = "../../modules/network"

  environment = local.environment
  application = local.application
  project     = local.project

  vpc_cidr             = "10.0.0.0/16"
  public_subnets_cidr  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets_cidr = ["10.0.3.0/24", "10.0.4.0/24"]

  create_natgw = false

  tags = local.tags

}

module "application" {
  source = "../../modules/application"

  environment = local.environment
  application = local.application
  project     = local.project

  create_ecr_redis     = true
  create_ecr_flask_app = true
  create_ecs_cluster   = true

  vpc_id = module.network.vpc_id

  tags = local.tags

}