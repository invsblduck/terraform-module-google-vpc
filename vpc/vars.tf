variable "vpc_project_id" {
  description = "GCP Project name for VPC"
  type        = string
}

variable "vpc_region" {
  description = "GCP Region name for VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
}

variable "vpc_subnet_name" {
  description = "Name of VPC subnet"
  type        = string
}

variable "vpc_subnet_desc" {
  description = "Description for VPC subnet"
  type        = string
}

variable "vpc_subnet_cidr" {
  description = "CIDR range for VPC subnet"
  type        = string
}
