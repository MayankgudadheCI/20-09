variable "private_subnet_map" {
  type = map(string)
  default = {
    "eu-west-1a" = "subnet-0108c9090c55ac627"
    "eu-west-1b" = "subnet-0ecb0e48ae5b059be"
    "eu-west-1c" = "subnet-031abbe35dab10e6a"
    "eu-west-1d" = "subnet-0ecb0e48ae5b059be"
    "eu-west-1e" = "subnet-031abbe35dab10may"
  }
}

variable "RDS_AZ" {
  type    = string
  default = "eu-west-1c"
}


variable "subnet_count" {
  type    = number
  default = 2
}
