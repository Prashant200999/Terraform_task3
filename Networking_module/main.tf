resource "aws_vpc" "myvpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "myvpc"
  }
}
resource "aws_subnet" "Public_1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.pub1_cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "Public_1"
  }
}
resource "aws_subnet" "Public_2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.pub2_cidr
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "Public_2"
  }
}
resource "aws_subnet" "Private_1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.pvt1_cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false
  tags = {
    Name = "Private_1"
  }
}
resource "aws_subnet" "Private_2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.pvt2_cidr
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false
  tags = {
    Name = "Private_2"
  }
}

resource "aws_internet_gateway" "ig-01" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "ig-01"
  }
}

resource "aws_route_table" "Public_route" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig-01.id
  }
  tags = {
    Name = "Public_route"
  }
}

resource "aws_eip" "nat_eip" {
  tags = {
    Name = "nat_eip"
  }
}


resource "aws_nat_gateway" "nat_01" {
  allocation_id     = aws_eip.nat_eip.id
  
  subnet_id         = aws_subnet.Public_1.id
  tags = {
    Name = "nat_01"
  }
}



resource "aws_route_table_association" "public_association_1" {
  subnet_id      = aws_subnet.Public_1.id
  route_table_id = aws_route_table.Public_route.id
}

resource "aws_route_table_association" "public_association_2" {
  subnet_id      = aws_subnet.Public_2.id
  route_table_id = aws_route_table.Public_route.id
}

resource "aws_route_table" "Private_route" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_01.id
  }

  tags = {
    Name = "Private_route"
  }
}

resource "aws_route_table_association" "private_association_1" {
  subnet_id      = aws_subnet.Private_1.id
  route_table_id = aws_route_table.Private_route.id
}

resource "aws_route_table_association" "private_association_2" {
  subnet_id      = aws_subnet.Private_2.id
  route_table_id = aws_route_table.Private_route.id
}




resource "aws_security_group" "Public_sg" {
  vpc_id = aws_vpc.myvpc.id

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
  vpc_id = aws_vpc.myvpc.id

  ingress {
    from_port   = 22
    to_port     = 22
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
