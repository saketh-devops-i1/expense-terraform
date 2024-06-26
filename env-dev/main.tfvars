env           = "dev"
instance_type = "t3.small"
zone_id       = "Z0909418I38HFIGEMHVH"

#VPC
vpc_cidr_block         = "10.10.0.0/24"
default_vpc_cidr       = "172.31.0.0/16"
default_vpc_id         = "vpc-05950a4a432578d18"
default_route_table_id = "rtb-00c1c67ac88029c78"


frontend_subnets   = ["10.10.0.0/27", "10.10.0.32/27"]
backend_subnets    = ["10.10.0.64/27", "10.10.0.96/27"]
db_subnets         = ["10.10.0.128/27", "10.10.0.160/27"]
public_subnets         = ["10.10.0.192/27", "10.10.0.224/27"]
availability_zones = ["us-east-1a", "us-east-1b"]
bastion_nodes      = ["172.31.22.132/32"]
prometheus_nodes   = ["172.31.89.157/32"]
certificate_arn    = "arn:aws:acm:us-east-1:851725659930:certificate/2f99a9d1-854b-4cfe-8e60-643e5155a8cf"