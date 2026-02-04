variable "vcd_user" {
  type = string
}

variable "vcd_password" {
  type = string
  sensitive = true
}

variable "vcd_org" {
  type = string
}

variable "vcd_url" {
  type = string
}
