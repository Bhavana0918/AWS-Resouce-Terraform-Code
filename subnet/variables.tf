variable "vpc_id" {
  description = "ID of the VPC"
}

variable "cidr_blocks" {
  description = "List of CIDR blocks for the subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones for the subnets"
  type        = list(string)
}

variable "subnet_name" {
  description = "Name tag for the subnets"
}
