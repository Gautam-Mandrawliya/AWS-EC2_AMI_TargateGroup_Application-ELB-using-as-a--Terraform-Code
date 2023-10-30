variable "ports" {
  type = list(number)
}

variable "availability_zone" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "ami" {
  type = string
}