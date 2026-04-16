module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.4.0"

  name = var.vpc_name
  cidr = var.vpc_cidr_block

  azs             = var.vpc_availability_zones
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets
  enable_nat_gateway = var.vpc_enable_nat_gateway
  tags = {
    Environment = var.environment
    Name = var.vpc_name
  }
}