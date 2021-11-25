provider "acme" {
  #server_url = "https://acme-v02.api.letsencrypt.org/directory"
  server_url = "https://acme-staging-v02.api.letsencrypt.org/directory"
}

resource "tls_private_key" "instance" {
  algorithm = "RSA"
  rsa_bits  = var.rsa_bits
}

resource "acme_registration" "instance" {
  account_key_pem = tls_private_key.instance.private_key_pem
  email_address   = var.email_address
}

resource "acme_certificate" "instance" {
  account_key_pem = acme_registration.instance.account_key_pem
  #account_key_pem           = tls_private_key.private_key.private_key_pem
  common_name               = var.common_name
  subject_alternative_names = ["*.${var.common_name}"]
  key_type                  = var.rsa_bits
  min_days_remaining        = var.min_days_remaining
  dns_challenge {
    provider = "cloudflare"
  }
  lifecycle {
    create_before_destroy = true
  }
}

resource "local_file" "certificate" {
  sensitive_content = acme_certificate.instance.certificate_pem
  filename          = "${path.root}/certificates/${var.common_name}/${var.common_name}.crt"
  file_permission   = "0600"
}

resource "local_file" "private_key" {
  sensitive_content = acme_certificate.instance.private_key_pem
  filename          = "${path.root}/certificates/${var.common_name}/${var.common_name}.key"
  file_permission   = "0600"
}

resource "local_file" "fullchain" {
  sensitive_content = join("\n", [chomp(acme_certificate.instance.certificate_pem), chomp(acme_certificate.instance.issuer_pem)])
  filename          = "${path.root}/certificates/${var.common_name}/${var.common_name}.pem"
  file_permission   = "0600"
}
