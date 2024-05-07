resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "${cidrsubnet(var.vpc_cidr_block, 8, 0)}"
  availability_zone = "us-east-2a" 
  map_public_ip_on_launch = true
  tags = {
    Name = "public"
  }
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "${cidrsubnet(var.vpc_cidr_block, 8, 1)}"
  availability_zone = "us-east-2b" 
  tags = {
    Name = "private"
  }
}

