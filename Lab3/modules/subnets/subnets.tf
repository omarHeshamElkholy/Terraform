resource "aws_subnet" "publicsubnet" {
  vpc_id     = var.my_vpc_id
  cidr_block = var.cidr_blocks[count.index]
  count = length(var.cidr_blocks)
  tags = {
    Name = "Subnet${count.index}"
  }
}
#resource "aws_subnet" "subnet2" {
 # vpc_id     = var.my_vpc_id
#  cidr_block = var.cidr_block_2
#
#  tags = {
#    Name = "Subnet2"
#  }
#}