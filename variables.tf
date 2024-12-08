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
