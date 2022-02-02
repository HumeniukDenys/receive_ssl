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

module "newfortvppua" {
  common_name   = "new.fortv.pp.ua"
  source        = "./modules/get_ssl"
  email_address = "admin@fortv.pp.ua"
}

module "oldfortvppua" {
  common_name   = "old.fortv.pp.ua"
  source        = "./modules/get_ssl"
  email_address = "admin@fortv.pp.ua"
}
