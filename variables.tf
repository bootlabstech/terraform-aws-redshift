variable "cluster_identifier" {
  description = "The Cluster Identifier. Must be a lower case string"
  type        = string
}
variable "database_name" {
  description = "The name of the first database to be created when the cluster is created. If you do not provide a name, Amazon Redshift will create a default database called `dev`"
  type        = string
}
variable "master_password" {
  description = "Password for the master DB user. (Required unless a `snapshot_identifier` is provided). Must contain at least 8 chars, one uppercase letter, one lowercase letter, and one number"
  type        = string
  sensitive   = true
}
variable "master_username" {
  description = "Username for the master DB user (Required unless a `snapshot_identifier` is provided). Defaults to `awsuser`"
  type        = string
}
variable "node_type" {
  description = "The node type to be provisioned for the cluster"
  type        = string
}
variable "publicly_accessible" {
  description = "If true, the cluster can be accessed from a public network"
  type        = bool
}
variable "automated_snapshot_retention_period" {
  description = "The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Even if automated snapshots are disabled, you can still create manual snapshots when you want with create-cluster-snapshot. Default is 1"
  type        = number
}
variable "logging_enabled" {
  type        = bool
  description = "If true, enables logging information such as queries and connection attempts, for the specified Amazon Redshift cluster"
}

variable "logging_bucket_name" {
  type        = string
  description = "The name of an existing S3 bucket where the log files are to be stored. Must be in the same region as the cluster and the cluster must have read bucket and put object permissions"
}

variable "logging_s3_key_prefix" {
  type        = string
  description = "The prefix applied to the log file names"
}
variable "enhanced_vpc_routing" {
  type        = bool
  description = "If true , enhanced VPC routing is enabled"
  default     = true
}