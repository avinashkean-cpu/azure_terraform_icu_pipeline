output "nsg_ids" {
  description = "Map of NSG IDs"

  value = {
    for key, nsg in azurerm_network_security_group.nsgs : key => nsg.id
  }
}