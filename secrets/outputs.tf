output "rds_secret" {
  sensitive = true
  value     = aws_secretsmanager_secret_version.rds.secret_string
}
