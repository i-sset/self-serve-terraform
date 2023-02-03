resource "aws_vpc" "main_vpc" {
  cidr_block = var.main_vpc_cidr

  tags = {
    Name = "Josset's VPC"
  }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.public_subnet1_cidr
  availability_zone = "us-east-1a"

}

resource "aws_subnet" "public_subnet_2" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.public_subnet2_cidr
  availability_zone = "us-east-1b"
}

resource "aws_internet_gateway" "main_igw" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "Josset's IGW"
  }
}