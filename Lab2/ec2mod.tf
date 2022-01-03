module "ec2" {
  source   = "/home/ec2-user/environment/rootdir/modules/ec2"
  ec2_subnet_id = module.subnets.ec2_subnet_id
}

