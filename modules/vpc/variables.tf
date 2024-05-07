resource "aws_vpc" "terraform" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.terraform.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "terraform"
  }
}
