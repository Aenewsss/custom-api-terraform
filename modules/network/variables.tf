variable "project" {
  type = string
}

variable "subnets_qtt" {
  type    = number
  default = 4
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}