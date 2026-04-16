variable "vpc_name" {
  description = "VPC name"
  type = string
  default = "eks-vpc-dev"
}

variable "vpc_cidr_block" {
  type = string
  description = "CIDR block for the VPC"
  default = "10.0.0.0/16" 
}

variable "vpc_availability_zones" {
  description = "Availability zones for the VPC"
  type = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "vpc_public_subnets" {
  description = "Public subnets for the VPC"
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]  
}

variable "vpc_private_subnets" {
  description = "Private subnets for the VPC"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]  
}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateway for the VPC"
  type = bool
  default = true  
}