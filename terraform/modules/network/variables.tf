variable "environment" {}
variable "application" {}
variable "project" {}

variable "vpc_cidr" {
  type    = string
  default = ""
}

variable "public_subnets_cidr" {
  type    = list(string)
  default = [""]
}

variable "private_subnets_cidr" {
  type    = list(string)
  default = [""]
}

variable "create_natgw" {
  type    = bool
  default = false
}

variable "tags" {
  type    = map(any)
  default = {}
}