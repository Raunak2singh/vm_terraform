resource "azurerm_resource_group" "virtual_network" {
    for_each = var.vm_rgs
    name = each.value.name
    location = each.value.location
  
}