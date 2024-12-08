

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

module "Compute_module" {
  source            = "./Compute_module"
  pub_instance_name = var.pub_instance_name
  pvt_instance_name = var.pvt_instance_name
  ami_id            = var.ami_id
  instance_type     = var.instance_type

  pub_subnet_id = module.Networking_module.pub1_id
  pvt_subnet_id = module.Networking_module.pvt1_id
  pub_sg    = module.Security_module.pub_sg
  pvt_sg   = module.Security_module.pvt_sg


  # depends_on = [
  #   module.Networking_module,
  #   module.Security_module
  # ]
}
