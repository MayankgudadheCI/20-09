
#output "subnets" {
#  value = join(", ", [local.specified_subnet, local.dynamic[0]])
#}
#output "subnets" {
#  value = var.subnet_count == 0 ? join(", ", b) : join(", ", [local.a] + local.subnets_output)
#}

#output "subnets" {
#  value = join(", ", local.output_subnets)
#}

#output "subnets" {
#  value = var.subnet_count == 0 ? join(", ", local.dynamic) : join(", ", [local.specified_subnet, local.dynamic[0]])
#}
#output "subnets" {
#  value = local.specified_subnet != "" ? join(", ", [local.specified_subnet, local.dynamic[0]]) : join(", ", [for i in random_integer.random_subnet : local.all_subnets[i.result]])
#}

#output "subnets" {
#  value = var.subnet_count == 0 ? join(", ", local.all_subnets) : local.specified_subnet != "" ? join(", ", [local.specified_subnet, local.dynamic[0]]) : join(", ", [for i in random_integer.random_subnet : local.all_subnets[i.result]])
#}
output "subnets" {
  value = var.subnet_count == 0 ? join(", ", local.all_subnets) :var.subnet_count > 0 ? join(", ", concat([local.specified_subnet], slice(local.dynamic, 0, var.subnet_count - 1))) :local.specified_subnet != "" ? join(", ", [local.specified_subnet, local.dynamic[0]]) :join(", ", [for i in random_integer.random_subnet : local.all_subnets[i.result]])
}




