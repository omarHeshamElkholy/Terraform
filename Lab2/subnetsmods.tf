module "subnets" {
  source   = "/home/ec2-user/environment/rootdir/modules/subnets"
  my_vpc_id = module.vpc.my_vpc_id
  customer = "iti"
  project  = "staging"
  cidr_block_1 = "10.0.1.0/24"
  cidr_block_2 = "10.0.2.0/24"
}

