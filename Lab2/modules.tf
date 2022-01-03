module "vpc" {
  source   = "/home/ec2-user/environment/rootdir/modules/vpc"
  customer = "iti"
  project  = "staging"
  
}

