module "frontend" {
    depends_on = [ module.backend ]
 source        = "./modules/app"
 env           = var.env
 instance_type = var.instance_type
 component     = "frontend"
 zone_id       = var.zone_id
 vault_token   = var.vault_token
 subnets       = module.vpc.frontend_subnets
 vpc_id        = module.vpc_id
}

module "backend" {
    depends_on = [ module.mysql ]
 source        = "./modules/app"
 env           = var.env
 instance_type = var.instance_type
 component     = "backend"
 zone_id       = var.zone_id
 vault_token   = var.vault_token
 subnets       = module.vpc.backend_subnets
 vpc_id        = module.vpc_id
}

module "mysql" {
 source        = "./modules/app"
 env           = var.env
 instance_type = var.instance_type
 component     = "mysql"
 zone_id       = var.zone_id
 vault_token   = var.vault_token
 subnets       = module.vpc.db_subnets
 vpc_id        = module.vpc_id
}

module "mysql" {
 source                     = "./modules/app"
 env                        = var.env
 vpc_cidr_block             = var.vpc_cidr_block
 subnet_cidr_block          = var.subnet_cidr_block
 default_vpc_id             = var.default_vpc_id
default_vpc_cidr            = var.default_vpc_cidr
default_route_table_id      = var.default_route_table_id
variable frontend_subnets   = var.frontend_subnets
variable backend_subnets    = var.backend_subnets
variable db_subnets         = var.db_subnets
variable public_subnets     = var.public_subnets
variable availability_zones = var.availability_zones
}