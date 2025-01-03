module "vpc"{
    #source = "../terraform-aws-vpc"
    source = "git::https://github.com/chandrika55-97/terraform-aws-vpc.git?ref=main"
    project_name = var.project_name
    vpc_cidr = var.vpc_cidr
    environment = var.environment
    common_tags = var.common_tags
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    #the below are peering connection if required we can use
    is_peering_required = var.is_peering_required
}
