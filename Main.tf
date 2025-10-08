resource "aws_instance" "app_server" {
  ami           = "ami-0d4aa492f133a3068"
  instance_type = "t2.micro"

  tags = {
    Name = "learn-terraform"
  }
}