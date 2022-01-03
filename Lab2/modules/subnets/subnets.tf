resource "aws_subnet" "subnet1" {
  vpc_id     = var.my_vpc_id
  cidr_block = var.cidr_block_1

  tags = {
    Name = "Subnet1"
  }
}
resource "aws_subnet" "subnet2" {
  vpc_id     = var.my_vpc_id
  cidr_block = var.cidr_block_2

  tags = {
    Name = "Subnet2"
  }
}