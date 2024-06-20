output "location" {
  description = "Location set for Azure RG"
  value       = var.location
}

output "public_ip_address" {
  value = "${azurerm_linux_virtual_machine.vm.name}: ${data.azurerm_public_ip.ip-data.ip_address}"
}
