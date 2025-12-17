# terraform-azurerm-route-table-association

Terraform module to **associate an Azure Route Table with one or more subnets**.

This module follows the **single-responsibility principle**:
- ✔ Associates Route Table ↔ Subnet
- ❌ Does NOT create route tables
- ❌ Does NOT create subnets

Use this module together with:
- `terraform-azurerm-route-table`
- `terraform-azurerm-subnet`

---

## Usage (GitHub source)

```hcl
module "route_table_association" {
  source = "git::https://github.com/<GITHUB_USERNAME>/terraform-azurerm-route-table-association.git?ref=v1.0.0"
 
  route_table_id = module.route_table.route_table_id
 
  subnet_ids = [
    module.subnet_app.id,
    module.subnet_web.id
  ]
}
````
## 🧰 Inputs

| Name                           | Type           | Required | Description            |
|--------------------------------|----------------|----------|------------------------|
| `route_table_id`               | `string`       | yes      | Route table resource ID |
| `subnet_id`                    | `list(string)` | yes      | Subnet ID to associate |

## 📤 Outputs
| Name                  | Description       |
|-----------------------|-------------------|
| `route_table_id`      | Route table used  |
| `associated_subnetes` | subnet associated |

## Example (Local Test)
````
cd example/simple
terraform init
terraform plan
terraform apply
````
# Recommended Architecture Flow

1. Resource Group
2. Virtual Network
3. Subnet
4. Route Table
5. Route Table Association

This clean separation :
- improves reusability
- avoids circular dependancies
- aligns with enterprise Terraform standards

## Versioning
Always use a tagged version
````
?ref?=v1.0.0
````






