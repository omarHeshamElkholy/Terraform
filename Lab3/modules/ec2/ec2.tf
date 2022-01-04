resource "aws_instance" "web" {
  ami           = "ami-04dd4500af104442f"
  instance_type = "t2.micro"
  subnet_id = var.ec2_subnet_id
  count = var.ifo ? 1:0
  tags = {
    Name = "ec2_test"
  }
}