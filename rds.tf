################################################################################
# Supporting Resources
################################################################################

module "security_group" {
  source      = "terraform-aws-modules/security-group/aws"
  version     = "~> 4.0"
  name        = var.rds_sg_name
  description = var.rds_sg_description
  vpc_id      = module.vpc.vpc_id
  computed_ingress_with_source_security_group_id = [
    {
      rule                     = "mysql-tcp"
      source_security_group_id = module.asg_sg.security_group_id
    }
  ]
  number_of_computed_ingress_with_source_security_group_id = 1
  tags                                                     = var.rds_sg_tags
}

################################################################################
# Relational database service (RDS)
################################################################################

module "rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "5.1.0"
  # insert the 1 required variable here
  identifier = var.rds_identifier
  # All available versions: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt
  engine               = var.rds_mysql_engine
  engine_version       = var.rds_engine_version
  family               = var.rds_family               # DB parameter group
  major_engine_version = var.rds_major_engine_version # DB option group
  instance_class       = var.rds_instance_class

  allocated_storage     = var.rds_allocated_storage
  max_allocated_storage = var.rds_max_allocated_storage

  db_name  = var.rds_db_name
  username = var.rds_username
  port     = var.rds_port

  multi_az               = var.rds_multi_az
  subnet_ids             = module.vpc.database_subnets
  vpc_security_group_ids = [module.security_group.security_group_id]

  maintenance_window              = var.rds_maintenance_window
  backup_window                   = var.rds_backup_window
  enabled_cloudwatch_logs_exports = var.rds_enabled_cloudwatch_logs_exports
  create_cloudwatch_log_group     = var.rds_create_cloudwatch_log_group

  backup_retention_period = var.rds_backup_retention_period
  skip_final_snapshot     = var.rds_skip_final_snapshot
  deletion_protection     = var.rds_deletion_protection

  performance_insights_enabled          = var.rds_performance_insights_enabled
  performance_insights_retention_period = var.rds_performance_insights_retention_period
  create_monitoring_role                = var.rds_create_monitoring_role
  monitoring_interval                   = var.rds_monitoring_interval
  db_subnet_group_name                  = module.vpc.database_subnet_group
  parameters = [
    {
      name  = "character_set_client"
      value = "utf8mb4"
    },
    {
      name  = "character_set_server"
      value = "utf8mb4"
    }
  ]

  tags                    = var.rds_tags
  db_instance_tags        = var.rds_db_instance_tags
  db_option_group_tags    = var.rds_db_option_group_tags
  db_parameter_group_tags = var.rds_db_parameter_group_tags
  db_subnet_group_tags    = var.rds_db_subnet_group_tags
}

