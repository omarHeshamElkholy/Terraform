### Create 2 pure private subnets for RDS
resource "aws_subnet" "Pprv1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "${var.cidr_block_1}"

  tags = {
    Name = "purePrivate1"
  }
}

resource "aws_subnet" "Pprv2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "${var.cidr_block_2}"

  tags = {
    Name = "purePrivate1"
  }
}
### Create 2 public subnets
resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "${var.cidr_block_3}"

  tags = {
    Name = "public_subnet1"
  }
}
resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "${var.cidr_block_4}"

  tags = {
    Name = "public_subnet2"
  }
}
### 2 Private Subnets w/nat gw
resource "aws_subnet" "prv1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "${var.cidr_block_5}"

  tags = {
    Name = "private_subnet2"
  }
}
resource "aws_subnet" "prv2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "${var.cidr_block_6}"

  tags = {
    Name = "private_subnet2"
  }
}