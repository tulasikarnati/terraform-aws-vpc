module "roboshop" {
  source = "../terraform-aws-vpc"
  project_name = var.project_name
  environment = var.environment
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags

  public_subnets_cidr = var.public_subnets_cidr

  private_subnet_cidr = var.private_subnet_cidr

  database_subnet_cidr = var.database_subnet_cidr
  
  is_peering_required = var.is_peering_required
}