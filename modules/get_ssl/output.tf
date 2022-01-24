output "ssl_for_domain" {
  value = local_file.certificate.filename
}
