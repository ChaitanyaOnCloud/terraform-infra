provider "aws"{
   region = var.region
}



resource "aws_security_group" "docker_sg" {
  name = "docker-host-sg"
  description = "Allow SSH, HTTP, HTTPS"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
}

resource "aws_instance" "docker_host" {
  ami           = "ami-02b8269d5e85954ef"
  instance_type = var.instance_type
  key_name      = var.key_name
  security_groups = [aws_security_group.docker_sg.name]

  user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install -y docker.io
              usermod -aG docker ubuntu
              EOF

  tags = {
    Name = "DockerHost"
  }
}