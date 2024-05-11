variable "env" {}
variable "instance_type" {}
variable "component" {}
variable "zone_id" {}
variable "vault_token" {}
variable "subnets"{}
variable "vpc_id"{}
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
variable "server_app_port_sg_cidr" {}
variable "lb_app_port_sg_cidr" {
  default = []
}