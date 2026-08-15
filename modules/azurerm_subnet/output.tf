output "subnet_ids" {
  description = "Map of Subnet IDs"

  value = {
    for key, subnet in azurerm_subnet.subnets : key => subnet.id
  }
}