resource "aws_vpc" "main_vpc" {
  cidr_block = var.main_vpc_cidr

  tags = {
    Name = "Josset's VPC"
  }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = var.public_subnet_cidr

}

resource "aws_internet_gateway" "main_igw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "Josset's IGW"
  }
}