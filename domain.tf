module "fortvppua" {
  common_name   = "fortv.pp.ua"
  source        = "./modules/get_ssl"
  email_address = "admin@fortv.pp.ua"
}

module "afortvppua" {
  common_name   = "a.fortv.pp.ua"
  source        = "./modules/get_ssl"
  email_address = "admin@fortv.pp.ua"
}
