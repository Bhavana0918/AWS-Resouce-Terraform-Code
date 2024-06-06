output "alb_arn" {
  description = "The ARN of the ALB"
  value       = aws_lb.this.arn
}

output "target_group_arn" {
  description = "The ARN of the target group"
  value       = aws_lb_target_group.this.arn
}

output "listener_arn" {
  description = "The ARN of the listener"
  value       = aws_lb_listener.this.arn
}
