module "ec2_instance" {
  source         = "D:/devops/Terraform/terraform-infra/modules/ec2-instance"
  ami            = "ami-00af95fa354fdb788"
  instance_type  = "t2.micro"
  subnet_id      = "subnet-0b814e4f82d7c984a"
  region         = "ap-south-1"
  instance_name  = "MyInstance"
  key_name       = "my-key-pair"    
}