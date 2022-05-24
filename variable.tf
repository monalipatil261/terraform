provider "azurerm" {
    features {}
}


variable "resource_group" {
    default = "jio-production-rg"
  
}

variable "location" {
    default = "westus"
  
}

variable "address_space" {
    default = [["10.0.0.0/16"], ["192.168.0.0/16"], ["172.2.0.0/16"]]
  
}
variable "vnet" {
    default = ["jio-production-vnet", "Jio-staging-Vnet", "Jio-replica-Vnet"]
  
}


variable "production_subnet_name" {
    default = ["Production-WA-Public-Subnet", "Production-WA-APP-Private-Subnet", "Production-WA-DB-Private-Subnet", "CONSUMER-Private-Subnet"]
}

variable "production_subnet_cidr" {
    default = [["10.0.1.0/24"], ["10.0.2.0/24"], ["10.0.3.0/24"], ["10.0.4.0/24"]]
  
}

variable "staging_subnet_name" {
    default = ["Production-WA-Public-Subnet", "Production-WA-APP-Private-Subnet", "Production-WA-DB-Private-Subnet", "CONSUMER-Private-Subnet"]
}

variable "staging_subnet_cidr" {
    default = [["192.168.1.0/24"], ["192.168.2.0/24"], ["192.168.3.0/24"], ["192.168.4.0/24"]]
  
}

variable "replica_subnet_name" {
    default = ["Production-WA-Public-Subnet", "Production-WA-APP-Private-Subnet", "Production-WA-DB-Private-Subnet", "CONSUMER-Private-Subnet"]
}

variable "replica_subnet_cidr" {
    default = [["172.0.1.0/24"], ["172.0.2.0/24"], ["172.0.3.0/24"], ["172.0.4.0/24"]]
  
}