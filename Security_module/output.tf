output "pub_sg_id" {
  description = "ID of public sg"
  value = aws_security_group.Public_sg.id
}
output "pvt_sg_id" {
  description = "ID of public sg"
  value = aws_security_group.Private_sg.id
}

