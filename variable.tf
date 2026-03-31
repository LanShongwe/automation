variable "cidr_for_vpc" {
  description = "cidr range for vpc"
  type        = string
}

variable "tenancy" {
  description = "Instance tenancy for instances launched in this VPC"
  type        = string
  default     = "default"
}

variable "dns_hostnames_enabled" {
  description = "A boolean flag to enable/disable DNS support in the VPC"
  type        = bool
  default     = false
}

variable "dns_support_enabled" {
  description = "A boolean flag to enable/disable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "vpc_name" {
  description = "Name for the VPC"
  type        = string
}