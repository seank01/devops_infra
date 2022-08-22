env    = "prod"
name   = "prod"
owner  = "dj.kim"
region = "ap-northeast-2"

vpc_cidr        = "10.0.0.0/16"
azs             = ["ap-northeast-2a", "ap-northeast-2c"]
private_subnets = ["10.0.1.0/24", "10.0.3.0/24"]
public_subnets  = ["10.0.101.0/24", "10.0.103.0/24"]
gwlb_subnets    = ["10.0.201.0/24", "10.0.203.0/24"]

enable_ipv6        = false
enable_nat_gateway = true
single_nat_gateway = true

private_subnet_tags = { "kubernetes.io/role/internal-elb" : 1 }
public_subnet_tags  = { "kubernetes.io/role/elb" : 1 }
vpc_tags            = {}
tags                = {}

vpc_flow_retention_days = 1