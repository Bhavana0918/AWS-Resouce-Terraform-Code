variable "vpc_id" {
  description = "ID of the VPC"
}

variable "internet_gateway_name" {
  description = "Name tag for the internet gateway"
}

variable "subnet_name" {
  description = "The name to assign to the subnets"
  type        = string
  default     = "main-subnet"
}