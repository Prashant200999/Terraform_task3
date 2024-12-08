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
output "pub_sg" {
  value = module.Security_module.pub_sg
}
output "pvt_sg" {
  value = module.Security_module.pvt_sg
}


output "pub-instance-id" {
  value = module.Compute_module.pub-instance-id
}
output "pvt-instance-id" {
  value = module.Compute_module.pvt-instance-id
}
output "instance_public_ip" {
  value = module.Compute_module.instance_public_ip
}
