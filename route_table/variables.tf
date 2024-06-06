variable "vpc_id" {
  description = "ID of the VPC"
}

variable "internet_gateway_id" {
  description = "ID of the internet gateway"
}

variable "route_table_name" {
  description = "Name tag for the route table"
}

variable "subnet_name" {
  description = "The name to assign to the subnets"
  type        = string
  default     = "main-subnet"
}

variable "cidr_blocks" {
  description = "List of CIDR blocks for the subnets"
  type        = list(string)
}

variable "subnet_ids" {
  description = "ID of the subnet associated with the route table"
  type        = list(string)
}