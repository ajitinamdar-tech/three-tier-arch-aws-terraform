################################################################################
# Virtual private cloud (VPC) outputs
################################################################################

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = module.vpc.vpc_arn
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "default_security_group_id" {
  description = "The ID of the security group created by default on VPC creation"
  value       = module.vpc.default_security_group_id
}

output "default_network_acl_id" {
  description = "The ID of the default network ACL"
  value       = module.vpc.default_network_acl_id
}

output "default_route_table_id" {
  description = "The ID of the default route table"
  value       = module.vpc.default_route_table_id
}

output "vpc_instance_tenancy" {
  description = "Tenancy of instances spin up within VPC"
  value       = module.vpc.vpc_instance_tenancy
}

output "vpc_enable_dns_support" {
  description = "Whether or not the VPC has DNS support"
  value       = module.vpc.vpc_enable_dns_support
}

output "vpc_enable_dns_hostnames" {
  description = "Whether or not the VPC has DNS hostname support"
  value       = module.vpc.vpc_enable_dns_hostnames
}

output "vpc_main_route_table_id" {
  description = "The ID of the main route table associated with this VPC"
  value       = module.vpc.vpc_main_route_table_id
}

output "vpc_ipv6_association_id" {
  description = "The association ID for the IPv6 CIDR block"
  value       = module.vpc.vpc_ipv6_association_id
}

output "vpc_ipv6_cidr_block" {
  description = "The IPv6 CIDR block"
  value       = module.vpc.vpc_ipv6_cidr_block
}

output "vpc_secondary_cidr_blocks" {
  description = "List of secondary CIDR blocks of the VPC"
  value       = module.vpc.vpc_secondary_cidr_blocks
}

output "vpc_owner_id" {
  description = "The ID of the AWS account that owns the VPC"
  value       = module.vpc.vpc_owner_id
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

output "private_subnet_arns" {
  description = "List of ARNs of private subnets"
  value       = module.vpc.private_subnet_arns
}

output "private_subnets_cidr_blocks" {
  description = "List of cidr_blocks of private subnets"
  value       = module.vpc.private_subnets_cidr_blocks
}

output "private_subnets_ipv6_cidr_blocks" {
  description = "List of IPv6 cidr_blocks of private subnets in an IPv6 enabled VPC"
  value       = module.vpc.private_subnets_ipv6_cidr_blocks
}

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

output "public_subnet_arns" {
  description = "List of ARNs of public subnets"
  value       = module.vpc.public_subnet_arns
}

output "public_subnets_cidr_blocks" {
  description = "List of cidr_blocks of public subnets"
  value       = module.vpc.public_subnets_cidr_blocks
}

output "public_subnets_ipv6_cidr_blocks" {
  description = "List of IPv6 cidr_blocks of public subnets in an IPv6 enabled VPC"
  value       = module.vpc.public_subnets_ipv6_cidr_blocks
}

output "database_subnets" {
  description = "List of IDs of database subnets"
  value       = module.vpc.database_subnets
}

output "database_subnet_arns" {
  description = "List of ARNs of database subnets"
  value       = module.vpc.database_subnet_arns
}

output "database_subnets_cidr_blocks" {
  description = "List of cidr_blocks of database subnets"
  value       = module.vpc.database_subnets_cidr_blocks
}

output "database_subnets_ipv6_cidr_blocks" {
  description = "List of IPv6 cidr_blocks of database subnets in an IPv6 enabled VPC"
  value       = module.vpc.database_subnets_ipv6_cidr_blocks
}

output "database_subnet_group" {
  description = "ID of database subnet group"
  value       = module.vpc.database_subnet_group
}

output "database_subnet_group_name" {
  description = "Name of database subnet group"
  value       = module.vpc.database_subnet_group_name
}

output "public_route_table_ids" {
  description = "List of IDs of public route tables"
  value       = module.vpc.public_route_table_ids
}

output "private_route_table_ids" {
  description = "List of IDs of private route tables"
  value       = module.vpc.private_route_table_ids
}

output "database_route_table_ids" {
  description = "List of IDs of database route tables"
  value       = module.vpc.database_route_table_ids
}

output "intra_route_table_ids" {
  description = "List of IDs of intra route tables"
  value       = module.vpc.intra_route_table_ids
}

output "public_internet_gateway_route_id" {
  description = "ID of the internet gateway route"
  value       = module.vpc.public_internet_gateway_route_id
}

output "public_internet_gateway_ipv6_route_id" {
  description = "ID of the IPv6 internet gateway route"
  value       = module.vpc.public_internet_gateway_ipv6_route_id
}

output "database_internet_gateway_route_id" {
  description = "ID of the database internet gateway route"
  value       = module.vpc.database_internet_gateway_route_id
}

output "database_nat_gateway_route_ids" {
  description = "List of IDs of the database nat gateway route"
  value       = module.vpc.database_nat_gateway_route_ids
}

output "database_ipv6_egress_route_id" {
  description = "ID of the database IPv6 egress route"
  value       = module.vpc.database_ipv6_egress_route_id
}

output "private_nat_gateway_route_ids" {
  description = "List of IDs of the private nat gateway route"
  value       = module.vpc.private_nat_gateway_route_ids
}

output "private_ipv6_egress_route_ids" {
  description = "List of IDs of the ipv6 egress route"
  value       = module.vpc.private_ipv6_egress_route_ids
}

output "private_route_table_association_ids" {
  description = "List of IDs of the private route table association"
  value       = module.vpc.private_route_table_association_ids
}

output "database_route_table_association_ids" {
  description = "List of IDs of the database route table association"
  value       = module.vpc.database_route_table_association_ids
}

output "public_route_table_association_ids" {
  description = "List of IDs of the public route table association"
  value       = module.vpc.public_route_table_association_ids
}

output "dhcp_options_id" {
  description = "The ID of the DHCP options"
  value       = module.vpc.dhcp_options_id
}

output "nat_ids" {
  description = "List of allocation ID of Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_ids
}

output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

output "natgw_ids" {
  description = "List of NAT Gateway IDs"
  value       = module.vpc.natgw_ids
}

output "igw_id" {
  description = "The ID of the Internet Gateway"
  value       = module.vpc.igw_id
}

output "igw_arn" {
  description = "The ARN of the Internet Gateway"
  value       = module.vpc.igw_arn
}

output "egress_only_internet_gateway_id" {
  description = "The ID of the egress only Internet Gateway"
  value       = module.vpc.egress_only_internet_gateway_id
}

output "cgw_ids" {
  description = "List of IDs of Customer Gateway"
  value       = module.vpc.cgw_ids
}

output "cgw_arns" {
  description = "List of ARNs of Customer Gateway"
  value       = module.vpc.cgw_arns
}

output "this_customer_gateway" {
  description = "Map of Customer Gateway attributes"
  value       = module.vpc.this_customer_gateway
}

output "vgw_id" {
  description = "The ID of the VPN Gateway"
  value       = module.vpc.vgw_id
}

output "vgw_arn" {
  description = "The ARN of the VPN Gateway"
  value       = module.vpc.vgw_arn
}

output "default_vpc_id" {
  description = "The ID of the Default VPC"
  value       = module.vpc.default_vpc_id
}

output "default_vpc_arn" {
  description = "The ARN of the Default VPC"
  value       = module.vpc.default_vpc_arn
}

output "default_vpc_cidr_block" {
  description = "The CIDR block of the Default VPC"
  value       = module.vpc.default_vpc_cidr_block
}

output "default_vpc_default_security_group_id" {
  description = "The ID of the security group created by default on Default VPC creation"
  value       = module.vpc.default_vpc_default_security_group_id
}

output "default_vpc_default_network_acl_id" {
  description = "The ID of the default network ACL of the Default VPC"
  value       = module.vpc.default_vpc_default_network_acl_id
}

output "default_vpc_default_route_table_id" {
  description = "The ID of the default route table of the Default VPC"
  value       = module.vpc.default_vpc_default_route_table_id
}

output "default_vpc_instance_tenancy" {
  description = "Tenancy of instances spin up within Default VPC"
  value       = module.vpc.default_vpc_instance_tenancy
}

output "default_vpc_enable_dns_support" {
  description = "Whether or not the Default VPC has DNS support"
  value       = module.vpc.default_vpc_enable_dns_support
}

output "default_vpc_enable_dns_hostnames" {
  description = "Whether or not the Default VPC has DNS hostname support"
  value       = module.vpc.default_vpc_enable_dns_hostnames
}

output "default_vpc_main_route_table_id" {
  description = "The ID of the main route table associated with the Default VPC"
  value       = module.vpc.default_vpc_main_route_table_id
}

output "public_network_acl_id" {
  description = "ID of the public network ACL"
  value       = module.vpc.public_network_acl_id
}

output "public_network_acl_arn" {
  description = "ARN of the public network ACL"
  value       = module.vpc.public_network_acl_arn
}

output "private_network_acl_id" {
  description = "ID of the private network ACL"
  value       = module.vpc.private_network_acl_id
}

output "private_network_acl_arn" {
  description = "ARN of the private network ACL"
  value       = module.vpc.private_network_acl_arn
}

output "database_network_acl_id" {
  description = "ID of the database network ACL"
  value       = module.vpc.database_network_acl_id
}

output "database_network_acl_arn" {
  description = "ARN of the database network ACL"
  value       = module.vpc.database_network_acl_arn
}

################################################################################
# Auto scaling group (ASG) outputs
################################################################################

################################################################################
# ASG - Autoscaling group
################################################################################


################################################################################
# Security group
################################################################################
output "security_group_id" {
  description = "The ID of the security group"
  value       = module.asg_sg.security_group_id
}

output "security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.asg_sg.security_group_vpc_id
}

output "security_group_owner_id" {
  description = "The owner ID"
  value       = module.asg_sg.security_group_owner_id
}

output "security_group_name" {
  description = "The name of the security group"
  value       = module.asg_sg.security_group_name
}

output "security_group_description" {
  description = "The description of the security group"
  value       = module.asg_sg.security_group_description
}

################################################################################
# Autoscaling group
################################################################################

output "asg_launch_template_id" {
  description = "The ID of the launch template"
  value       = module.asg.launch_template_id
}

output "asg_launch_template_arn" {
  description = "The ARN of the launch template"
  value       = module.asg.launch_template_arn
}

output "asg_launch_template_name" {
  description = "The name of the launch template"
  value       = module.asg.launch_template_name
}

output "asg_launch_template_latest_version" {
  description = "The latest version of the launch template"
  value       = module.asg.launch_template_latest_version
}

output "asg_launch_template_default_version" {
  description = "The default version of the launch template"
  value       = module.asg.launch_template_default_version
}

output "asg_autoscaling_group_id" {
  description = "The autoscaling group id"
  value       = module.asg.autoscaling_group_id
}

output "asg_autoscaling_group_name" {
  description = "The autoscaling group name"
  value       = module.asg.autoscaling_group_name
}

output "asg_autoscaling_group_arn" {
  description = "The ARN for this AutoScaling Group"
  value       = module.asg.autoscaling_group_arn
}

output "asg_autoscaling_group_min_size" {
  description = "The minimum size of the autoscale group"
  value       = module.asg.autoscaling_group_min_size
}

output "asg_autoscaling_group_max_size" {
  description = "The maximum size of the autoscale group"
  value       = module.asg.autoscaling_group_max_size
}

output "asg_autoscaling_group_desired_capacity" {
  description = "The number of Amazon EC2 instances that should be running in the group"
  value       = module.asg.autoscaling_group_desired_capacity
}

output "asg_autoscaling_group_default_cooldown" {
  description = "Time between a scaling activity and the succeeding scaling activity"
  value       = module.asg.autoscaling_group_default_cooldown
}

output "asg_autoscaling_group_health_check_grace_period" {
  description = "Time after instance comes into service before checking health"
  value       = module.asg.autoscaling_group_health_check_grace_period
}

output "asg_autoscaling_group_health_check_type" {
  description = "EC2 or ELB. Controls how health checking is done"
  value       = module.asg.autoscaling_group_health_check_type
}

output "asg_autoscaling_group_availability_zones" {
  description = "The availability zones of the autoscale group"
  value       = module.asg.autoscaling_group_availability_zones
}

output "asg_autoscaling_group_vpc_zone_identifier" {
  description = "The VPC zone identifier"
  value       = module.asg.autoscaling_group_vpc_zone_identifier
}

output "asg_autoscaling_group_load_balancers" {
  description = "The load balancer names associated with the autoscaling group"
  value       = module.asg.autoscaling_group_load_balancers
}

output "asg_autoscaling_group_target_group_arns" {
  description = "List of Target Group ARNs that apply to this AutoScaling Group"
  value       = module.asg.autoscaling_group_target_group_arns
}

output "asg_autoscaling_schedule_arns" {
  description = "ARNs of autoscaling group schedules"
  value       = module.asg.autoscaling_schedule_arns
}

output "asg_autoscaling_policy_arns" {
  description = "ARNs of autoscaling policies"
  value       = module.asg.autoscaling_policy_arns
}

output "asg_autoscaling_group_enabled_metrics" {
  description = "List of metrics enabled for collection"
  value       = module.asg.autoscaling_group_enabled_metrics
}

output "asg_iam_role_name" {
  description = "The name of the IAM role"
  value       = module.asg.iam_role_name
}

output "asg_iam_role_arn" {
  description = "The Amazon Resource Name (ARN) specifying the IAM role"
  value       = module.asg.iam_role_arn
}

output "asg_iam_role_unique_id" {
  description = "Stable and unique string identifying the IAM role"
  value       = module.asg.iam_role_unique_id
}

output "asg_iam_instance_profile_arn" {
  description = "ARN assigned by AWS to the instance profile"
  value       = module.asg.iam_instance_profile_arn
}

output "asg_iam_instance_profile_id" {
  description = "Instance profile's ID"
  value       = module.asg.iam_instance_profile_id
}

output "asg_iam_instance_profile_unique" {
  description = "Stable and unique string identifying the IAM instance profile"
  value       = module.asg.iam_instance_profile_unique
}

################################################################################
# Launch template only
################################################################################

output "launch_template_only_launch_template_id" {
  description = "The ID of the launch template"
  value       = module.asg.launch_template_id
}

output "launch_template_only_launch_template_arn" {
  description = "The ARN of the launch template"
  value       = module.asg.launch_template_arn
}

output "launch_template_only_launch_template_name" {
  description = "The name of the launch template"
  value       = module.asg.launch_template_name
}

output "launch_template_only_launch_template_latest_version" {
  description = "The latest version of the launch template"
  value       = module.asg.launch_template_latest_version
}

output "launch_template_only_launch_template_default_version" {
  description = "The default version of the launch template"
  value       = module.asg.launch_template_default_version
}

################################################################################
# Application load balancer (ALB) outputs
################################################################################

output "alb_security_group_id" {
  description = "The ID of the security group"
  value       = module.alb_http_sg.security_group_id
}

output "alb_security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.alb_http_sg.security_group_vpc_id
}

output "alb_security_group_owner_id" {
  description = "The owner ID"
  value       = module.alb_http_sg.security_group_owner_id
}

output "alb_security_group_name" {
  description = "The name of the security group"
  value       = module.alb_http_sg.security_group_name
}

output "alb_security_group_description" {
  description = "The description of the security group"
  value       = module.alb_http_sg.security_group_description
}
output "lb_id" {
  description = "The ID and ARN of the load balancer we created."
  value       = module.alb.lb_id
}

output "lb_arn" {
  description = "The ID and ARN of the load balancer we created."
  value       = module.alb.lb_arn
}

output "lb_dns_name" {
  description = "The DNS name of the load balancer."
  value       = module.alb.lb_dns_name
}

output "lb_arn_suffix" {
  description = "ARN suffix of our load balancer - can be used with CloudWatch."
  value       = module.alb.lb_arn_suffix
}

output "lb_zone_id" {
  description = "The zone_id of the load balancer to assist with creating DNS records."
  value       = module.alb.lb_zone_id
}

output "http_tcp_listener_arns" {
  description = "The ARN of the TCP and HTTP load balancer listeners created."
  value       = module.alb.http_tcp_listener_arns
}

output "http_tcp_listener_ids" {
  description = "The IDs of the TCP and HTTP load balancer listeners created."
  value       = module.alb.http_tcp_listener_ids
}

output "https_listener_arns" {
  description = "The ARNs of the HTTPS load balancer listeners created."
  value       = module.alb.https_listener_arns
}

output "https_listener_ids" {
  description = "The IDs of the load balancer listeners created."
  value       = module.alb.https_listener_ids
}

################################################################################
# Relational database service (RDS) outputs
################################################################################
output "db_instance_address" {
  description = "The address of the RDS instance"
  value       = module.rds.db_instance_address
}
output "db_instance_arn" {
  description = "The ARN of the RDS instance"
  value       = module.rds.db_instance_arn
}
output "db_instance_availability_zone" {
  description = "The availability zone of the RDS instance"
  value       = module.rds.db_instance_availability_zone
}
output "db_instance_endpoint" {
  description = "The connection endpoint"
  value       = module.rds.db_instance_endpoint
}
output "db_instance_engine" {
  description = "The database engine"
  value       = module.rds.db_instance_engine
}
output "db_instance_engine_version_actual" {
  description = "The running version of the database"
  value       = module.rds.db_instance_engine_version_actual
}
output "db_instance_hosted_zone_id" {
  description = "The canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record)"
  value       = module.rds.db_instance_hosted_zone_id
}
output "db_instance_id" {
  description = "The RDS instance ID"
  value       = module.rds.db_instance_id
}
output "db_instance_resource_id" {
  description = "The RDS Resource ID of this instance"
  value       = module.rds.db_instance_resource_id
}
output "db_instance_status" {
  description = "The RDS instance status"
  value       = module.rds.db_instance_status
}
output "db_instance_name" {
  description = "The database name"
  value       = module.rds.db_instance_name
}
output "db_instance_username" {
  description = "The master username for the database"
  value       = module.rds.db_instance_username
  sensitive   = true
}
output "db_instance_password" {
  description = "The database password (this password may be old, because Terraform doesn't track it after initial creation)"
  value       = module.rds.db_instance_password
  sensitive   = true
}
output "db_instance_port" {
  description = "The database port"
  value       = module.rds.db_instance_port
}
output "db_subnet_group_id" {
  description = "The db subnet group name"
  value       = module.rds.db_subnet_group_id
}
output "db_subnet_group_arn" {
  description = "The ARN of the db subnet group"
  value       = module.rds.db_subnet_group_arn
}
output "db_parameter_group_id" {
  description = "The db parameter group id"
  value       = module.rds.db_parameter_group_id
}
output "db_parameter_group_arn" {
  description = "The ARN of the db parameter group"
  value       = module.rds.db_parameter_group_arn
}
output "db_instance_domain" {
  description = "The ID of the Directory Service Active Directory domain the instance is joined to"
  value       = module.rds.db_instance_domain
}
output "db_instance_domain_iam_role_name" {
  description = "The name of the IAM role to be used when making API calls to the Directory Service. "
  value       = module.rds.db_instance_domain_iam_role_name
}
output "db_enhanced_monitoring_iam_role_arn" {
  description = "The Amazon Resource Name (ARN) specifying the monitoring role"
  value       = module.rds.enhanced_monitoring_iam_role_arn
}
output "db_instance_cloudwatch_log_groups" {
  description = "Map of CloudWatch log groups created and their attributes"
  value       = module.rds.db_instance_cloudwatch_log_groups
}
