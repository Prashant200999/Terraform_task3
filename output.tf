output "vpc_id" {
  value = module.Networking_module.vpc_id
}
output "pub1_id" {
  value = module.Networking_module.pub1_id
}
output "pub2_id" {
  value = module.Networking_module.pub2_id
}
output "pvt1_id" {
  value = module.Networking_module.pvt1_id
}
output "pvt2_id" {
  value = module.Networking_module.pvt2_id
}
output "pub_sg_id" {
  value = module.Security_module.pub_sg_id
}
output "pvt_sg_id" {
  value = module.Security_module.pub_sg_id
}
