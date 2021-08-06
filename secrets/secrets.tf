resource "aws_secretsmanager_secret" "rds" {
  name                    = "rds"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "rds" {
  secret_id     = aws_secretsmanager_secret.rds.id
  secret_string = var.secret_string
}
