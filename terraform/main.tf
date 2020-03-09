# Configure the Azure Provider
provider "azurerm" {
    
  version = "~> 1.26.0"
  subscription_id = "${var.subscription_id}"
  client_id = "${var.client_id}"
  client_secret = "${var.client_secret}"
  tenant_id = "${var.tenant_id}"

}

# reference to already created resource group for Shared Application Hosting
data "azurerm_resource_group" "rg" {
    name = "${var.resource_group}"
}