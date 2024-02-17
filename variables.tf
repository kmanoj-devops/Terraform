#Define variables
variable "myimage" {
  description = "Image for container."
  default     = "nginx:latest"
}
variable "container_name" {
  description = "Name of the container."
  default     = "demo"
}

variable "int_port" {
  description = "Internal port for container."
  default     = "80"
}
variable "ext_port" {
  description = "External port for container."
  default     = "80"
}
