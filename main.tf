module "Networking_module" {
  source    = "./Networking_module"
  vpc_cidr  = var.vpc_cidr_01
  pub1_cidr = var.pub1_cidr_01
  pub2_cidr = var.pub2_cidr_01
  pvt1_cidr = var.pvt1_cidr_01
  pvt2_cidr = var.pvt2_cidr_01
}
module "Security_module" {
  source      = "./Security_module"
  sg_port_pvt = var.sg_port_pvt_01
  vpc_id_n    = module.Networking_module.vpc_id
}
