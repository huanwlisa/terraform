terraform {
    backend "azurerm" {
    resource_group_name = "terraformazureRG"
    storage_account_name = "terraformazuresa"
    container_name = "tfstate"
    key = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  #version = "=2.11"
 # subscription_id = "dba291df-204d-4258-bf6e-3b7bfddc4b66"
  features {}

}
variable "location" {
  default = [
"eastus",
"eastus2",
"southcentralus",
"westus2",
"westus3",
"australiaeast",
"southeastasia",
"northeurope",
"uksouth",
"westeurope",
"centralus",
"northcentralus",
"westus",
"southafricanorth",
"centralindia",
"eastasia",
"japaneast",
#"jioindiawest",
"koreacentral",
"canadacentral",
"francecentral",
"germanywestcentral",
"norwayeast",
"switzerlandnorth",
"uaenorth",
"brazilsouth",
"westcentralus",
#"southafricawest",
"australiacentral",
#"australiacentral2",
"australiasoutheast",
"japanwest",
"koreasouth",
"southindia",
"westindia",
"canadaeast",
#"francesouth",
#"germanynorth",
#"norwaywest",
#"switzerlandwest",
"ukwest",
#"uaecentral",
#"brazilsoutheast",
  ]
}
variable "vnet_address" {
  default = [
"10.0.0.0/16",
"10.1.0.0/16",
"10.2.0.0/16",
"10.3.0.0/16",
"10.4.0.0/16",
"10.5.0.0/16",
"10.6.0.0/16",
"10.7.0.0/16",
"10.8.0.0/16",
"10.9.0.0/16",
"10.10.0.0/16",
"10.11.0.0/16",
"10.12.0.0/16",
"10.13.0.0/16",
"10.14.0.0/16",
"10.15.0.0/16",
"10.16.0.0/16",
#"10.17.0.0/16",
"10.18.0.0/16",
"10.19.0.0/16",
"10.20.0.0/16",
"10.21.0.0/16",
"10.22.0.0/16",
"10.23.0.0/16",
"10.24.0.0/16",
"10.25.0.0/16",
"10.26.0.0/16",
#"10.27.0.0/16",
"10.28.0.0/16",
#"10.29.0.0/16",
"10.30.0.0/16",
"10.31.0.0/16",
"10.32.0.0/16",
"10.33.0.0/16",
"10.34.0.0/16",
"10.35.0.0/16",
#"10.36.0.0/16",
#"10.37.0.0/16",
#"10.38.0.0/16",
#"10.39.0.0/16",
"10.40.0.0/16",
#"10.41.0.0/16",
#"10.42.0.0/16",
  ]
}
#resource "azurerm_resource_group" "azureRG" {
#  count = length(var.location)
#  name = "azureRG-${element(var.location, count.index)}"
#  location = element(var.location, count.index)
#}
resource "azurerm_virtual_network" "azure-vnet" {
  count = length(var.location)
  address_space = [element(var.vnet_address, count.index)]
  location = element(var.location, count.index)
  name = "azure-vnet-${element(var.location, count.index)}"
  resource_group_name = "terraformazureRG"
}
resource "azurerm_subnet" "azure-vnet-subnet" {
  count = length(var.location)
  name = "azure-vnet-subnet-${element(var.location, count.index)}"
  resource_group_name = "terraformazureRG"
  virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, count.index)
  address_prefix =  cidrsubnet(element(azurerm_virtual_network.azure-vnet[count.index].address_space, count.index), 8, 0)
}

resource "azurerm_virtual_network_peering" "azure-peering-1" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 1)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 1)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 0)
}
resource "azurerm_virtual_network_peering" "azure-peering-2" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 2)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 2)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 1)
}
resource "azurerm_virtual_network_peering" "azure-peering-3" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 3)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 3)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 2)
}
resource "azurerm_virtual_network_peering" "azure-peering-4" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 4)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 4)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 3)
}
resource "azurerm_virtual_network_peering" "azure-peering-5" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 5)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 5)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 4)
}
resource "azurerm_virtual_network_peering" "azure-peering-6" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 6)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 6)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 5)
}
resource "azurerm_virtual_network_peering" "azure-peering-7" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 7)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 7)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 6)
}
resource "azurerm_virtual_network_peering" "azure-peering-8" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 8)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 8)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 7)
}
resource "azurerm_virtual_network_peering" "azure-peering-9" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 9)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 9)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 8)
}
resource "azurerm_virtual_network_peering" "azure-peering-10" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 10)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 10)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 9)
}
resource "azurerm_virtual_network_peering" "azure-peering-11" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 11)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 11)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 10)
}
resource "azurerm_virtual_network_peering" "azure-peering-12" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 12)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 12)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 11)
}
resource "azurerm_virtual_network_peering" "azure-peering-13" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 13)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 13)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 12)
}
resource "azurerm_virtual_network_peering" "azure-peering-14" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 14)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 14)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 13)
}
resource "azurerm_virtual_network_peering" "azure-peering-15" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 15)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 15)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 14)
}
resource "azurerm_virtual_network_peering" "azure-peering-16" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 16)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 16)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 15)
}
resource "azurerm_virtual_network_peering" "azure-peering-17" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 17)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 17)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 16)
}
resource "azurerm_virtual_network_peering" "azure-peering-18" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 18)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 18)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 17)
}
resource "azurerm_virtual_network_peering" "azure-peering-19" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 19)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 19)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 18)
}
resource "azurerm_virtual_network_peering" "azure-peering-20" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 20)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 20)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 19)
}
resource "azurerm_virtual_network_peering" "azure-peering-21" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 21)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 21)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 20)
}
resource "azurerm_virtual_network_peering" "azure-peering-22" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 22)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 22)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 21)
}
resource "azurerm_virtual_network_peering" "azure-peering-23" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 23)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 23)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 22)
}
resource "azurerm_virtual_network_peering" "azure-peering-24" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 24)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 24)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 23)
}
resource "azurerm_virtual_network_peering" "azure-peering-25" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 25)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 25)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 24)
}
resource "azurerm_virtual_network_peering" "azure-peering-26" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 26)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 26)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 25)
}
resource "azurerm_virtual_network_peering" "azure-peering-27" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 27)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 27)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 26)
}
resource "azurerm_virtual_network_peering" "azure-peering-28" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 28)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 28)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 27)
}
resource "azurerm_virtual_network_peering" "azure-peering-29" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 29)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 29)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 28)
}
resource "azurerm_virtual_network_peering" "azure-peering-30" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 30)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 30)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 29)
}
resource "azurerm_virtual_network_peering" "azure-peering-31" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 31)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 31)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 30)
}
resource "azurerm_virtual_network_peering" "azure-peering-32" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 32)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 32)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 31)
}
resource "azurerm_virtual_network_peering" "azure-peering-33" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 33)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 33)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 32)
}
resource "azurerm_virtual_network_peering" "azure-peering-34" {
 count = length(var.location) - 1
name = "peering-to-${element(azurerm_virtual_network.azure-vnet.*.name, count.index + 34)}"
remote_virtual_network_id = element(azurerm_virtual_network.azure-vnet.*.id, count.index + 34)
resource_group_name = "terraformazureRG"
virtual_network_name = element(azurerm_virtual_network.azure-vnet.*.name, 33)
}



# Create public IPs
resource "azurerm_public_ip" "myterraformpublicip" {
    count = length(var.location)
    name                         = "myPublicIP-${element(var.location, count.index)}"
    location                     = element(var.location, count.index)
    resource_group_name = "terraformazureRG"
    allocation_method            = "Dynamic"

}
# Create Network Security Group and rule
resource "azurerm_network_security_group" "myterraformnsg" {
   count = length(var.location)
    name                = "myNetworkSecurityGroup-${element(var.location, count.index)}"
    location            = element(var.location, count.index)
   resource_group_name = "terraformazureRG"

    security_rule {
        name                       = "SSH"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }
      security_rule {
        name                       = "ICMP"
        priority                   = 1002
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "icmp"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }
}
resource "azurerm_network_interface" "pinghostnic" {
  count = length(var.location)
  name                = "pinghostnid-${element(var.location, count.index)}"
  location            = element(var.location, count.index)
  resource_group_name = "terraformazureRG"

  ip_configuration {
    name                          = "internal-${element(var.location, count.index)}"
    subnet_id                     = element(azurerm_subnet.azure-vnet-subnet.*.id, count.index)
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = element(azurerm_public_ip.myterraformpublicip.*.id, count.index)
  }
}
# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "example" {
    count = length(var.location)
    network_interface_id      = element(azurerm_network_interface.pinghostnic.*.id, count.index)
    network_security_group_id = element(azurerm_network_security_group.myterraformnsg.*.id, count.index)
}

#resource "azurerm_linux_virtual_machine" "pinghost" {
#  count = length(var.location)
#  name                = "${element(var.location, count.index)}"
#  resource_group_name = "terraformazureRG"
#  location            = element(var.location, count.index)
#  size                = "Standard_B1ls"
#  admin_username      = "adminuser"
#  network_interface_ids = [
#    element(azurerm_network_interface.pinghostnic.*.id, count.index)
# ]
#
# admin_ssh_key {
#   username   = "adminuser"
#   public_key = file("~/.ssh/id_rsa.pub")
# }
#
# os_disk {
#   caching              = "ReadWrite"
#   storage_account_type = "Standard_LRS"
# }
#
# source_image_reference {
#   publisher = "Canonical"
#   offer     = "UbuntuServer"
#   sku       = "16.04-LTS"
#   version   = "latest"
# }
#
#