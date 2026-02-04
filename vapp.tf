resource "vcd_vapp" "test_vapp" {
  name     = "tf-test-vapp"
  org      = var.vcd_org
  vdc      = "Tomor"
  power_on = false
}

output "vapp_name" {
  value = vcd_vapp.test_vapp.name
}
