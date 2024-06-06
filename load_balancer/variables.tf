variable "load_balancer_name" {
  description = "Name of the load balancer"
  type        = string
}

variable "listener" {
  description = "Listener configuration for the load balancer"
  type = list(object({
    instance_port     = number
    instance_protocol = string
    lb_port           = number
    lb_protocol       = string
  }))
}

variable "target_group" {
  description = "Target group configuration for the load balancer"
  type = list(object({
    name     = string
    protocol = string
    port     = number
  }))
}
