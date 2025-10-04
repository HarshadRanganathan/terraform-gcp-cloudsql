variable "project_id" {
  description = "The ID of the GCP project."
  type        = string
}

variable "region" {
  description = "The region where the Cloud SQL instance will be created."
  type        = string
  default     = "us-central1"
}

variable "instance_name" {
  description = "The name of the Cloud SQL instance."
  type        = string
}

variable "database_version" {
  description = "The database engine version (e.g., MYSQL_8_0, POSTGRES_13)."
  type        = string
}

variable "tier" {
  description = "The machine type for the instance (e.g., db-f1-micro, db-n1-standard-1)."
  type        = string
}

variable "availability_type" {
  description = "The availability type (ZONAL or REGIONAL)."
  type        = string
  default     = "ZONAL"
}

variable "disk_autoresize" {
  description = "Whether to enable disk auto-resize."
  type        = bool
  default     = true
}

variable "disk_size" {
  description = "The size of the disk in GB."
  type        = number
  default     = 10
}

variable "disk_type" {
  description = "The type of disk (PD_SSD or PD_HDD)."
  type        = string
  default     = "PD_SSD"
}

variable "ipv4_enabled" {
  description = "Whether to enable IPv4."
  type        = bool
  default     = true
}

variable "private_network" {
  description = "The VPC network to use for private IP."
  type        = string
  default     = null
}

variable "ssl_mode" {
  description = " SSL mode name are required. ALLOW_UNENCRYPTED_AND_ENCRYPTED ENCRYPTED_ONLY TRUSTED_CLIENT_CERTIFICATE_REQUIRED"
  type        = string
  default     = null
}

variable "backup_enabled" {
  description = "Whether to enable backups."
  type        = bool
  default     = true
}

variable "backup_start_time" {
  description = "The start time for backups (e.g., 23:00)."
  type        = string
  default     = "23:00"
}

variable "binary_log_enabled" {
  description = "Whether binary logging is enabled."
  type        = bool
  default     = false
}

variable "point_in_time_recovery_enabled" {
  description = "Whether point-in-time recovery is enabled."
  type        = bool
  default     = false
}

variable "maintenance_day" {
  description = "The day of the week for maintenance (1 = Monday, 7 = Sunday)."
  type        = number
  default     = 1
}

variable "maintenance_hour" {
  description = "The hour of the day for maintenance (0-23)."
  type        = number
  default     = 0
}

variable "database_name" {
  description = "The name of the database."
  type        = string
}

variable "database_charset" {
  description = "The charset for the database."
  type        = string
  default     = "utf8"
}

variable "database_collation" {
  description = "The collation for the database."
  type        = string
  default     = "utf8_general_ci"
}

variable "edition" {
  description = "ENTERPRISE_PLUS or ENTERPRISE"
  type        = string
  default     = "ENTERPRISE"
}

variable "location" {
  type        = string
  default     = "us"  
}

variable "deletion_protection_enabled" {
  type        = bool
  default     = true  
}

variable "maintenance_window_enabled" {
  description = "Whether to enable maintenance window."
  type        = bool
  default     = false
}

variable "update_track" {
  description = "The update track for the instance (canary or stable)."
  type        = string
  default     = "canary"
}

variable "enable_password_policy" {
  description = "Enable password validation policy for Cloud SQL instance."
  type        = bool
  default     = true
}

variable "password_min_length" {
  description = "Minimum password length for Cloud SQL password validation policy."
  type        = number
  default     = 8
}

variable "password_complexity" {
  description = "Password complexity requirement (e.g., COMPLEXITY_DEFAULT, COMPLEXITY_CUSTOM)."
  type        = string
  default     = "COMPLEXITY_DEFAULT"
}

variable "password_reuse_interval" {
  description = "Number of passwords before an old password can be reused."
  type        = number
  default     = 0
}

variable "password_disallow_username_substring" {
  description = "Disallow password to contain substrings of the username."
  type        = bool
  default     = true
}