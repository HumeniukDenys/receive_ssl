module "fortvppua" {
  common_name   = "fortv.pp.ua"
  source        = "./modules/get_ssl"
  email_address = "admin@fortv.pp.ua"
}

module "testfortvppua" {
  common_name   = "test.fortv.pp.ua"
  source        = "./modules/get_ssl"
  email_address = "admin@fortv.pp.ua"
}

module "bau000com" {
  common_name   = "bau000.com"
  source        = "./modules/get_ssl"
  email_address = "admin@bau000.com"
}
