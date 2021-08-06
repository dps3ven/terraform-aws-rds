# terraform-aws-rds

## Description

This module will create an AWS MYSQL RDS platform with all the networking required to allow users to connect to a database from a workstation.

It is intended to be for development purposes only.

By default, it leverages an ingress public IP address of 0.0.0.0/0, allowing all incoming connections.

By default, it includes a database password.

Both of these can be overridden, and this is strongly recommended.

---

## Examples:

### Overridding the Default Ingress IP Address
[How to find your public IP address](https://whatismyipaddress.com/)
##### 

```
 terraform apply -var=your_public_ip_address='whateveryourpublicipaddress/32'
```

### Overriding the Database Password and the Ingress IP Address
```
terraform apply -var=secret_string="yoursecretpassword' -var=your_public_ip_address='whateveryourpublicipaddress/32'
```
## Connecting to your database

This module creates a credential file called secrets.cnf that in turn is called by the local file 'mysql_login'.

Copy and paste the contents of 'mysql_login' to your terminal window.

This should allow you to connect to your database.

## Troubleshooting

1. Verify that you have a mysql client installed
1. Verify that your AWS account is still authenticated
1. Verfiy your public IP address (if overridden)
1. Verify your database password (if overridden)

