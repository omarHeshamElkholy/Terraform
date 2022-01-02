### Internet gateway 
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "igw_1"
  }
}
## Elastic IP 
resource "aws_eip" "eip" {
  vpc      = true
}
### Nat Gateway 
resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public1.id
  tags = {
    Name = "gw NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}
### pure private route table 
resource "aws_route_table" "PurePrivate" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "privateRouteTable"
  }
}
### Public route table
resource "aws_route_table" "Public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "PublicRouteTable"
  }
}
### Private Route table w/ Nat Gateway
resource "aws_route_table" "Private" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "PrivateRouteTable"
  }
}
resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.Public.id
}
resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.Public.id
}
resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.prv1.id
  route_table_id = aws_route_table.Private.id
}
resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.prv2.id
  route_table_id = aws_route_table.Private.id
}