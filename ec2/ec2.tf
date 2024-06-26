resource "aws_instance" "ec2" {
  for_each = { for instance in var.instances : instance.instance_name => instance }

  instance_type   = each.value.instance_type
  ami             = each.value.ami
  key_name        = each.value.key_name
  # security_groups = [aws_security_group.security_group.id] 
  subnet_id       = var.subnet_id

  vpc_security_group_ids = [var.security_group_id] 
  user_data = each.value.user_data

  tags = {
    Name = each.value.instance_name
  }
}