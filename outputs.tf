output "vpc_id" {
  value       = aws_vpc.this.id
  description = "The identifier of this VPC."
}

output "vpc_cidr_block" {
  value       = aws_vpc.this.cidr_block
  description = "The CIDR block of this VPC."
}

output "vpc_main_route_table_id" {
  value       = aws_vpc.this.main_route_table_id
  description = "The Identifier of the main route table associated with this VPC."
}

output "vpc_default_route_table_id" {
  value       = aws_vpc.this.default_route_table_id
  description = "The Identifier of the route table created by default on VPC creation."
}

output "vpc_default_network_acl_id" {
  value       = aws_vpc.this.default_network_acl_id
  description = "The Identifier of the network ACL created by default on VPC creation."
}

output "vpc_default_security_group_id" {
  value       = aws_vpc.this.default_security_group_id
  description = "The Identifier of the security group created by default on VPC creation."
}

output "igw_id" {
  value       = aws_internet_gateway.this.id
  description = "The Identifier of the Internet Gateway."
}

