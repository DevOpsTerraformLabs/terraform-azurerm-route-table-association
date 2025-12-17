output "route_table_id" {
  description = "Route table ID used for the association"
  value       = var.route_table_id
}

output "associated_subnets" {
  description = "List of subnet IDs associated with the route table"
  value       = var.subnet_ids
}