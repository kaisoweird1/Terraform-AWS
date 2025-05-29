variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}


variable "az_count" {
  type        = number
}

variable "availability_zones" {
  type        = list(string)
}

variable "tags" {
  type        = map(string)
  default     = {}
}
