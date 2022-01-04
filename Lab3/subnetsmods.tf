module "subnets" {
  source      = "/home/ec2-user/environment/rootdir/modules/subnets"
  my_vpc_id   = module.vpc.my_vpc_id
  customer    = "iti"
  project     = "staging"
  cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24"]
}

