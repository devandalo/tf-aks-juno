locals {
  tags = {
    location    = var.location
    environment = var.environment
    stack       = var.stack
    project     = var.project
  }
}
