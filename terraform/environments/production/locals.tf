# locals.tf


locals {
  aws_region  = "us-east-1"
  aws_profile = "default"

  environment = "production"
  application = "web-visitor-counter"
  project     = "berkeley"

  tags = {
    Environment = local.environment
    Project     = local.project
  }

}
