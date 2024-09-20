provider "local" {
}

locals {
  specified_subnet = lookup(var.private_subnet_map, var.RDS_AZ, "")
  dynamic = [for az, subnet_id in var.private_subnet_map : subnet_id if az != var.RDS_AZ]
  all_subnets = [for subnet_id in var.private_subnet_map : subnet_id]
}

resource "random_integer" "random_subnet" {
  count = 3
  min   = 0
  max   = length(local.all_subnets) - 1
}
