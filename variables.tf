variable "vpc_cidr_01" {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR block of vpc"
}
variable "pub1_cidr_01" {
  type        = string
  default     = "10.0.1.0/24"
  description = "CIDR block of vpc"
}
variable "pub2_cidr_01" {
  type        = string
  default     = "10.0.2.0/24"
  description = "CIDR block of vpc"
}
variable "pvt1_cidr_01" {
  type        = string
  default     = "10.0.3.0/24"
  description = "CIDR block of vpc"
}
variable "pvt2_cidr_01" {
  type        = string
  default     = "10.0.4.0/24"
  description = "CIDR block of vpc"
}
variable "sg_port_pvt_01" {
  type        = string
  default     = 22
  description = "port"
}



variable "pub_instance_name" {
  type    = string
  default = "pub_in"
}
variable "pvt_instance_name" {
  type    = string
  default = "pvt_in"
}
variable "ami_id" {
  type    = string
  default = "ami-0e2c8caa4b6378d8c"
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}

# variable "pub_subnet_id" {
#   type = string
#    
# }
# variable "pub_sg_id" {
#   type = string
#    
# }

# variable "pvt_subnet_id" {
#   type = string
#    
# }
# variable "pvt_sg_id" {
#   type = string
#   
# }
