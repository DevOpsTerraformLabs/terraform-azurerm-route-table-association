variable "route_table_id" {
  description = "ID of the Route Table to associate"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs to associate with the route table"
  type        = list(string)
}