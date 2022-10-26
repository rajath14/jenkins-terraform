region             = "us-east-1"
environment        = "dev"
vpc_environment    = "dev"
vpc_name           = "vpc"
vpc_cidr           = "10.140.128.0/23"
availability_zones = ["us-east-1b"]

subnets_cidrs = {
  public       = ["10.140.128.0/27"]
  private_app  = ["10.140.129.0/27", "10.140.129.32/27"]
}

sub_services_names = {
  public       = "pub"
  private_app  = "pri"
}

vpc_flow_log_group_name = "flow_logs"
enable_dns_hostnames    = true

peering_connections = {
  public       = []
  private_data = []
}