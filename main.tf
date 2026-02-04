terraform {
  required_providers {
    vcd = {
      source = "vmware/vcd"
      version = "~> 3.13" # oder aktuellere laut HashiCorp
    }
  }
}

provider "vcd" {
  user                 = var.vcd_user
  password             = var.vcd_password
  auth_type            = "integrated"
  org                  = var.vcd_org
  url                  = var.vcd_url
  allow_unverified_ssl = true
}

# Beispiel: Liste aller Kataloge
data "vcd_catalogs" "all" {}

output "catalogs" {
  value = data.vcd_catalog.all.names
}
