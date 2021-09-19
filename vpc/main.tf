terraform {
  required_version = "= 1.0.6"
}

module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 3.0"

    project_id   = var.vpc_project_id
    network_name = var.vpc_name

    subnets = [
        {
            description   = var.vpc_subnet_desc
            subnet_name   = var.vpc_subnet_name
            subnet_ip     = var.vpc_subnet_cidr
            subnet_region = var.vpc_region
        },
    ]

    routes = [
        {
            name              = "egress-internet"
            description       = "route through IGW to access internet"
            destination_range = "0.0.0.0/0"
            tags              = "egress-inet"
            next_hop_internet = "true"
        },
    ]
}
