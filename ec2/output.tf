output "instance_ids" {
  description = "The IDs of the instances"
  value       = { for instance in aws_instance.ec2 : instance.tags["Name"] => instance.id }
}

output "public_ips" {
  description = "The public IPs of the instances"
  value       = { for instance in aws_instance.ec2 : instance.tags["Name"] => instance.public_ip }
}