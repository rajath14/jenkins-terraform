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
  default     = "3dasset"
}

variable "tag_name" {
  description = "Tag Name of for Ec2 instance"
  default     = "dbt instance"
}

variable "ami_id" {
  description = "AMI for Ubuntu Ec2 instance"
  default     = "ami-098dc95f847244788"
}