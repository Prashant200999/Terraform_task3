resource "aws_security_group" "Public_sg" {
  vpc_id = var.vpc_id_n

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Public_sg"
  }
}

resource "aws_security_group" "Private_sg" {
  vpc_id = var.vpc_id_n

  ingress {
    from_port   = var.sg_port_pvt
    to_port     = var.sg_port_pvt
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "private_sg"
  }
}
