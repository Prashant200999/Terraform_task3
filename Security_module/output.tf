output "pub_sg" {
  description = "ID of public sg"
  value = aws_security_group.Public_sg.id
}
output "pvt_sg" {
  description = "ID of public sg"
  value = aws_security_group.Private_sg.id
}

