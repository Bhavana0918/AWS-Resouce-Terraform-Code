variable "instances" {
  description = "List of maps containing instance configurations"
  type = list(object({
    instance_name = string
    instance_type = string
    ami           = string
    key_name      = string
    os_type       = string
    user_data     = string

  }))
}

variable "subnet_id" {
  type        = string
  description = "ec2 subnet id"

}

variable "security_group_id" {
  description = "The security group ID to attach to instances"
  type        = string
}

variable "user_data" {
  description = "User data script to configure the instance"
  type        = string
  default     = ""
}
