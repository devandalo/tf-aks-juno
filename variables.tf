variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "deployment_type" {
  type = string
}

variable "location" {
  type = string
}

variable "location_short" {
  type = string
}

variable "stack" {
  type = string
}

variable "private_cluster_enabled" {
  type = bool
}

variable "kubernetes_version" {
  type = string
}

variable "sku_tier" {
  type = string
}

variable "default_np_name" {
  type = string
}

variable "default_np_size" {
  type = string
}

variable "default_np_orchestrator_version" {
  type = string
}

variable "default_np_zones" {
  type = list(string)
}
