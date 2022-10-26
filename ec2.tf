# Create AWS ec2 instance
resource "aws_instance" "DBT-instance" {
  ami = var.ami_id
  instance_type = var.instance_type
  security_groups= [var.security_group]
  user_data = file("script.sh")
  tags= {
    Name = var.tag_name
  }
}

#Create security group with firewall rules
resource "aws_security_group" "DBT-security-group" {
  name        = var.security_group
  description = "security group for Ec2 instance"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 # outbound from jenkis server
  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags= {
    Name = var.security_group
  }
}

# Create Elastic IP address
resource "aws_eip" "DBT-eip" {
  vpc      = true
  instance = aws_instance.DBT-instance.id
    tags= {
        Name = "my_elastic_ip"
    }
}