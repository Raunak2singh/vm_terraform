resource "azurerm_subnet" "frontend_subnet" {
  depends_on           = [azurerm_virtual_network.vms]
  for_each             = var.frontend_subnet
  name                 = each.value.name
  resource_group_name  = each.value.rg_name
  virtual_network_name = each.value.vn_net.name
  address_prefixes     = each.value.add_prefix


}