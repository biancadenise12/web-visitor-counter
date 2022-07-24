variable "environment" {}
variable "application" {}
variable "project" {}

variable "create_ecr_redis" {
  type    = bool
  default = false
}

variable "create_ecr_flask_app" {
  type    = bool
  default = false
}

variable "create_ecs_cluster" {
  type    = bool
  default = false
}

variable "vpc_id" {
  type = string
  default = ""
}

variable "tags" {
  type    = map(any)
  default = {}
}