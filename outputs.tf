output "rds_endpoint" {
  value = replace(aws_db_instance.default.endpoint, ":3306", "")
}
