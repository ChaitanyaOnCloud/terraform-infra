output "instance_id" {
  value = aws_instance.my_ec2
}

output "public_ip" {
  value = aws_instance.my_ec2.public_ip
}

output "availability_zone" {
  value = aws_instance.my_ec2.availability_zone
}

output "ami_id" {
  value = aws_instance.my_ec2.ami
}