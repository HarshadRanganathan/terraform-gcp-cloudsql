resource "google_sql_database_instance" "default" {
  name             = var.instance_name
  database_version = var.database_version
  region           = var.region

  settings {
    tier                        = var.tier
    availability_type           = var.availability_type
    disk_autoresize             = var.disk_autoresize
    disk_size                   = var.disk_size
    disk_type                   = var.disk_type
    edition                     = var.edition
    deletion_protection_enabled = var.deletion_protection_enabled
    ip_configuration {
      ipv4_enabled    = var.ipv4_enabled
      private_network = var.private_network
      ssl_mode        = var.ssl_mode
      #enable_private_path_for_google_cloud_services = true
    }
    backup_configuration {
      enabled                        = var.backup_enabled
      start_time                     = var.backup_start_time
      binary_log_enabled             = var.binary_log_enabled
      point_in_time_recovery_enabled = var.point_in_time_recovery_enabled
      location                       = var.location
    }
    maintenance_window {
      day  = var.maintenance_window_enabled ? var.maintenance_day : null
      hour = var.maintenance_hour
      update_track = var.update_track
    }
    password_validation_policy {
      enable_password_policy         = var.enable_password_policy
      min_length                    = var.password_min_length
      complexity                    = var.password_complexity
      reuse_interval                = var.password_reuse_interval 
      disallow_username_substring   = var.password_disallow_username_substring
    }
  }
}

#resource "google_sql_database" "default" {
#  name     = var.database_name
#  instance = google_sql_database_instance.default.name
#  charset  = var.database_charset
#  collation = var.database_collation
#}
