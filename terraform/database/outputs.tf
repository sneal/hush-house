output "password" {
  sensitive = true
  value     = "${random_string.password.result}"
}

output "ip" {
  value = "${google_sql_database_instance.main.ip_address.0.ip_address}"
}

output "ca-cert" {
  sensitive = true
  value     = "${google_sql_database_instance.main.server_ca_cert.0.cert}"
}

output "cert" {
  sensitive = true
  value     = "${google_sql_ssl_cert.cert.cert}"
}

output "private-key" {
  sensitive = true
  value     = "${google_sql_ssl_cert.cert.private_key}"
}
