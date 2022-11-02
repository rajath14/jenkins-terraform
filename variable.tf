variable "region" {
  description = "Region"
  default = "us-east-1"
}

variable "instance_type" {
  description = "instance type for ec2"
  default     =  "t2.micro"
}

variable "security_group" {
  description = "Name of security group"
  default     = "launch-wizard-1"
}

variable "tag_name" {
  description = "Tag Name of for Ec2 instance"
  default     = "dbt instance"
}

variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
  default     = "ami-09d3b3274b6c5d4aa"
}

variable "availability_zone" {
  default = "us-east-1c"
  description = "availabilty zone"
  
}

variable "key_name" {
  default = "jenkins"
  description = "key name for SSH"
  
}