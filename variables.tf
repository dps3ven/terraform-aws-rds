variable "your_public_ip_address" {
  description = "The public IP address of your workstation and what is allowed to connect to your database. Defaults to 'any'"
  default     = "0.0.0.0/0"
  type        = string
}

variable "secret_string" {
  description = "The password used to connect to your database"
  default     = "yourdatabasepassword"
  type        = string
}