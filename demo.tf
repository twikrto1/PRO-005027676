terraform {
  required_providers {
    vcd = {
      source  = "vmware/vcd"
      version = "~> 3.13"
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

# 1️⃣ Eine leere vApp im VDC "Tomori" anlegen
resource "vcd_vapp" "test_vapp" {
  name     = "tf-test-vapp"
  org      = var.vcd_org
  vdc      = "Tomor"   # <- dein VDC-Name
  power_on = false
}

# 2️⃣ Output zur Kontrolle
output "vapp_name" {
  value = vcd_vapp.test_vapp.name
}
output "vapp_vdc" {
  value = vcd_vapp.test_vapp.vdc
}
