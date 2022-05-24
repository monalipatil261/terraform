resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}


resource "azurerm_virtual_network" "vnet" {
  count = "${length(var.vnet)}"
  name                = "${var.vnet[count.index]}"
  location            = "${azurerm_resource_group.rg.location}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  address_space       = "${var.address_space[count.index]}"
}


resource "azurerm_subnet" "subnet" {
  count = "${length(var.production_subnet_name)}"
  name  = "${var.production_subnet_name[count.index]}"
  resource_group_name  =  "${azurerm_resource_group.rg.name}"
  virtual_network_name = "${var.vnet[0]}"
  address_prefixes =  "${var.production_subnet_cidr[count.index]}"
}

resource "azurerm_subnet" "subnet2" {
  count = "${length(var.staging_subnet_name)}"
  name  = "${var.staging_subnet_name[count.index]}"
  resource_group_name  =  "${azurerm_resource_group.rg.name}"
  virtual_network_name = "${var.vnet[1]}"
  address_prefixes =  "${var.staging_subnet_cidr[count.index]}"
}

resource "azurerm_subnet" "subnet3" {
  count = "${length(var.replica_subnet_name)}"
  name  = "${var.replica_subnet_name[count.index]}"
  resource_group_name  =  "${azurerm_resource_group.rg.name}"
  virtual_network_name = "${var.vnet[2]}"
  address_prefixes =  "${var.replica_subnet_cidr[count.index]}"
}