output "nic_ids" {
  description = "Map of NIC IDs"

  value = {
    for key, nic in azurerm_network_interface.nics : key => nic.id
  }
}