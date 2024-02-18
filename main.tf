
# Download the latest Centos image
resource "docker_image" "myimg" {
  name = "nginx:latest"
}

# Start the Container
resource "docker_container" "mycontainer" {
  name  = "testng"
  image = "${docker_image.myimg.image_id}"
  ports {
    internal = "80"
    external = "80"
  }
}

# This is with variable.tf file
# Download the latest Nginx Image
resource "docker_image" "myimage" {
  name = "${var.image_name}"
}
# Start the Container
resource "docker_container" "container_id" {
  name = "${var.container_name}"
  image = "${docker_image.myimage.latest}"
  ports {
    internal = "${var.int_port}"
    external = "${var.ext_port}"
}
