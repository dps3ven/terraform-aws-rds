
locals {
  filename = "secrets.cnf"
}

resource "local_file" "rds_secret" {
  content  = "[mysql]\nuser=admin\npassword=${module.rds_secret.rds_secret}"
  filename = local.filename
}

resource "local_file" "mysql_login" {
  content  = "mysql --defaults-extra-file=${local.filename} -h ${replace(aws_db_instance.default.endpoint, ":3306", "")} -P 3306"
  filename = "mysql_login"
}