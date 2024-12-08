module "Networking_module" {
  source    = "./Networking_module"
  vpc_cidr  = var.vpc_cidr_01
  pub1_cidr = var.pub1_cidr_01
  pub2_cidr = var.pub2_cidr_01
  pvt1_cidr = var.pvt1_cidr_01
  pvt2_cidr = var.pvt2_cidr_01
}
