resource "azurerm_virtual_network" "vms" {
  depends_on          = [azurerm_rescource_group.virtual_network]
  for_each            = each.virtul_networks
  name                = each.value.name
  resource_group_name = each.value.rg_name
  location            = each.value.loc
  address_space       = each.value.add_space

}