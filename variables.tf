variable "project" {
  type    = string
  default = "comunidadedevops"
}

variable "tags" {
  type = map(string)
  default = {
    Department   = "DevOps",
    Organization = "Infrascture and Operations",
    Environment  = "Development"
  }
}

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region to create the resources"
}
