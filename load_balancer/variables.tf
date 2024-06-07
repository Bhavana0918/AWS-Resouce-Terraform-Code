# variable "load_balancer_name" {
#   description = "Name of the load balancer"
#   type        = string
# }

# variable "listener" {
#   description = "Listener configuration for the load balancer"
#   type = list(object({
#     instance_port     = number
#     instance_protocol = string
#     lb_port           = number
#     lb_protocol       = string
#   }))
# }

# variable "target_group" {
#   description = "Target group configuration for the load balancer"
#   type = list(object({
#     name     = string
#     protocol = string
#     port     = number
#   }))
# }

variable "name" {
  description = "The name of the ALB"
  type        = string
}

variable "internal" {
  description = "Whether the load balancer is internal"
  type        = bool
  default     = false
}

variable "load_balancer_type" {
  description = "The type of load balancer"
  type        = string
  default     = "application"
}

variable "security_groups" {
  description = "A list of security group IDs to assign to the ALB"
  type        = list(string)
}

variable "subnets" {
  description = "A list of subnet IDs to attach to the ALB"
  type        = list(string)
}

variable "enable_deletion_protection" {
  description = "If true, deletion of the load balancer will be disabled via the AWS API"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {}
}

variable "target_group_name" {
  description = "The name of the target group"
  type        = string
}

variable "target_group_port" {
  description = "The port on which the target group is listening"
  type        = number
}

variable "target_group_protocol" {
  description = "The protocol for the target group"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where the target group will be created"
  type        = string
}

variable "health_check_healthy_threshold" {
  description = "The number of consecutive health checks successes required before considering an unhealthy target healthy"
  type        = number
  default     = 3
}

variable "health_check_unhealthy_threshold" {
  description = "The number of consecutive health check failures required before considering a target unhealthy"
  type        = number
  default     = 3
}

variable "health_check_timeout" {
  description = "The amount of time, in seconds, during which no response means a failed health check"
  type        = number
  default     = 5
}

variable "health_check_interval" {
  description = "The approximate amount of time, in seconds, between health checks of an individual target"
  type        = number
  default     = 30
}

variable "health_check_path" {
  description = "The destination for the health check request"
  type        = string
  default     = "/"
}

variable "health_check_matcher" {
  description = "The HTTP codes to use when checking for a successful response from a target"
  type        = string
  default     = "200"
}

variable "listener_port" {
  description = "The port on which the ALB is listening"
  type        = number
}

variable "listener_protocol" {
  description = "The protocol for the ALB listener"
  type        = string
}

variable "ec2_instance_ids" {
  description = "A map of EC2 instance IDs to attach to the target group"
  type        = map(string)
  default ="null"
}
