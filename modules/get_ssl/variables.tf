variable "common_name" {
  description = "The certificate's common name, the primary domain that the certificate will be recognized for."
  type        = string
}

variable "email_address" {
  description = "The contact email address for the account."
  type        = string
}

variable "rsa_bits" {
  default     = "4096"
  description = "The size of the generated RSA key in bits."
  type        = string
}

variable "min_days_remaining" {
  default     = 15
  description = "The minimum amount of days remaining on the expiration of a certificate before a renewal is attempted."
  type        = number
}

variable "subject_alternative_names" {
  default     = []
  description = "The certificate's subject alternative names, domains that this certificate will also be recognized for."
  type        = list(string)
}
