output "vpc_id" {
  description = "ID of vpc created"
  value = aws_vpc.myvpc.id
}
output "pub1_id" {
  description = "ID of vpc created"
  value = aws_subnet.Public_1.id
}
output "pub2_id" {
  description = "ID of vpc created"
  value = aws_subnet.Public_2.id
}
output "pvt1_id" {
  description = "ID of vpc created"
  value = aws_subnet.Private_1.id
}
output "pvt2_id" {
  description = "ID of vpc created"
  value = aws_subnet.Private_2.id
}
