resource "aws_redshift_cluster" "redshiftcluster" {
  cluster_identifier                  = var.cluster_identifier
  allow_version_upgrade               = var.allow_version_upgrade
  database_name                       = var.database_name
  master_username                     = var.master_username
  master_password                     = var.master_password
  node_type                           = var.node_type
  enhanced_vpc_routing                = var.enhanced_vpc_routing
  publicly_accessible                 = var.publicly_accessible
  automated_snapshot_retention_period = var.automated_snapshot_retention_period
  logging {
    enable        = var.logging_enabled
    bucket_name   = var.logging_bucket_name
    s3_key_prefix = var.logging_s3_key_prefix
  }
}
