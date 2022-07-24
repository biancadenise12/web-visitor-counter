# provider.tf

provider "aws" {
  region  = local.aws_region
  profile = local.aws_profile
}

terraform {
  required_version = ">= 0.14"
}