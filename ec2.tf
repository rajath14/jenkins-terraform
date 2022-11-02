# Create AWS ec2 instance
resource "aws_instance" "DBT-instance" {
  ami = var.ami_id
  availability_zone = var.availability_zone
  instance_type = var.instance_type
  security_groups= [var.security_group]
  key_name = var.key_name
  #user_data = file("script.sh")
  tags= {
    Name = var.tag_name
  }
}

resource "aws_eip" "dbt" {
  vpc = true
  instance     = aws_instance.DBT-instance.id
  tags = {
    "Name" = "dbt-eip"
  }
}