variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  type = bool
  default = true
}

variable "common_tags" {
  type = map
  default = {}
}

variable "vpc_tags" {
  type = map
  default = {}
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "igw_tags" {
  type = map
  default = {}
}

variable "public_subnets_cidr" {
  type = list
  validation {
    condition = length(var.public_subnets_cidr) == 2
    error_message = "please give 2 public valid subnet CIDR"
  }
}

variable "public_subnet_tags" {
  default = {}
}

variable "private_subnet_cidr" {
  type = list
  validation {
    condition = length(var.private_subnet_cidr) == 2
    error_message = "please give 2 valid private subnet cidr"
  }
}

variable "private_subnet_tags" {
  default = {}
}

variable "database_subnet_cidr" {
  type = list
  validation {
    condition = length(var.database_subnet_cidr) == 2
    error_message = "please give 2 valid database subnet cidr"
  }
}

variable "database_tags" {
  default = {}
}

variable "nat_gateway_tags" {
  default = {}
}

variable "public_route_table_tags" {
  default = {}
}

variable "private_route_table_tags" {
  default = {}
}

variable "database_route_table_tags" {
  default = {}
}

variable "is_peering_required" {
  type = bool
  default = false
}

variable "accepter_vpc_id" {
  type = string
  default = ""
}

variable "peering_tags" {
  default = {}
}