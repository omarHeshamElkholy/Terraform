module "sg" {
  source   = "/home/ec2-user/environment/rootdir/modules/sg"
  my_vpc_id = module.vpc.my_vpc_id
}

