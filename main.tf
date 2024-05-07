terraform {
  required_version = ">= 1.0.0"
}

# Include the VPC module
module "my_vpc" {
  source = "./modules/vpc"
  
  # Pass variables to the module
  vpc_cidr_block = var.vpc_cidr_block
}

# Output the VPC ID for reference
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.my_vpc.vpc_id
}

