project_id = ""
region     = "us-central1"


instance_name  = "dev"
database_name  = "mysql"
database_version = "MYSQL_8_4"

tier               = "db-custom-4-16384"
availability_type  = "ZONAL"
disk_autoresize    = true
disk_size          = 100
disk_type          = "PD_SSD"

ipv4_enabled       = false
private_network    = "projects//global/networks/dev-vpc"

backup_enabled                     = true
backup_start_time                  = "16:00"
binary_log_enabled                 = false
point_in_time_recovery_enabled     = false

maintenance_day  = 7
maintenance_hour = 0

database_charset  = "utf8"
database_collation = "utf8_general_ci"

edition = "ENTERPRISE"
ssl_mode = "ENCRYPTED_ONLY"
