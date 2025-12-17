// Local testing example

variable "route_table_id" {
  default = "/subscriptions/xxxx/resourceGroups/rg-example/providers/Microsoft.Network/routeTables/example-rt"
}

variable "subnet_ids" {
  default = [
    "/subscriptions/xxxx/resourceGroups/rg-example/providers/Microsoft.Network/virtualNetworks/example-vnet/subnets/app",
    "/subscriptions/xxxx/resourceGroups/rg-example/providers/Microsoft.Network/virtualNetworks/example-vnet/subnets/web"
  ]
}

//module "route_table_association" {
//  source = "../../"   # root module

//  route_table_id = var.route_table_id
//  subnet_ids     = var.subnet_ids
//}

// Remote testing example
module "route_table_association" {
  source = "git@github.com:DevOpsTerraformLabs/terraform-azurerm-route-table-association.git"   # root module

  route_table_id = var.route_table_id
  subnet_ids     = var.subnet_ids
}