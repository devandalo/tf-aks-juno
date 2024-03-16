module "rg" {
  source         = "git@github.com:devandalo/tf-rg-juno.git?ref=main"
  location       = var.location
  location_short = var.location_short
  tags           = var.tags
  stack          = var.stack
  project        = var.project
  environment    = var.environment
}
