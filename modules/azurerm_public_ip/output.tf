output "public_ip_ids" {
  description = "Map of Public IP IDs"

  value = {
    for key, pip in azurerm_public_ip.pip : key => pip.id
  }
}