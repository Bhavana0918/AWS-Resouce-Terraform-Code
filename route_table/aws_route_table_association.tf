resource "aws_route_table_association" "rta" {
  for_each = { for idx, subnet_id in var.subnet_ids : idx => subnet_id }

  subnet_id      = each.value
  route_table_id = aws_route_table.route_table.id
}
