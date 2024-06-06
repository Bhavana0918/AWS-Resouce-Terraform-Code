resource "aws_lb" "my_lb" {
  name               = var.load_balancer_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [module.security_group.security_group_id]

  subnets            = module.subnet.subnet_ids
  enable_deletion_protection = false

  tags = {
    Name = var.load_balancer_name
  }
}

resource "aws_lb_listener" "my_lb_listener" {
  load_balancer_arn = aws_lb.my_lb.arn
  port              = var.listener[0].lb_port
  protocol          = var.listener[0].lb_protocol

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.my_target_group[0].arn
  }
}

resource "aws_lb_target_group" "my_target_group" {
  count      = length(var.target_group)
  name       = var.target_group[count.index].name
  port       = var.target_group[count.index].port
  protocol   = var.target_group[count.index].protocol
  target_type = "instance"

  vpc_id     = module.vpc.vpc_id

  health_check {
    path                = "/"
    port                = var.target_group[count.index].port
    protocol            = var.target_group[count.index].protocol
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
}
