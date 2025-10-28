# -------------------------------
# VPC
# -------------------------------
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = { Name = "MyVPC" }
}

# -------------------------------
# Subnet
# -------------------------------
resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true
  tags = { Name = "MySubnet" }
}

# -------------------------------
# Security Group
# -------------------------------
resource "aws_security_group" "my_sg" {
  vpc_id = aws_vpc.my_vpc.id
  name   = "allow_ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# -------------------------------
# EC2 Instances (with count)
# -------------------------------
resource "aws_instance" "meta_ec2" {
  count         = 4
  ami           = "ami-02d26659fd82cf299"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.my_subnet.id
  vpc_security_group_ids = [aws_security_group.my_sg.id]

  tags = {
    Name = "Server-${count.index + 1}"
  }
}
