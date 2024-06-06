output "vpc_id" {
  value = aws_vpc.myvpc.id
}

output "vpc_cidr_block" {
    value=aws_vpc.myvpc.cidr_block 
}
