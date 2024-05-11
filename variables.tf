variable "env" {}
variable "instance_type" {}
variable "zone_id" {}
variable "vault_token" {}
variable "vpc_cidr_block" {}
variable "default_vpc_id" {}
variable "default_vpc_cidr" {}
variable "default_route_table_id" {}
variable "frontend_subnets" {}
variable "backend_subnets" {}
variable "db_subnets" {}
variable "public_subnets"{}
variable "availability_zones" {}
variable "lb_type"{
    default = null
}
variable "lb_needed"{
    default =false
}
variable "lb_subnets" {
  default = null
}
variable "app_port" {
    default = null
}
variable "bastion_nodes" {}
variable "prometheus_nodes" {}
variable "certificate_arn" {}
variable "lb_ports" {}