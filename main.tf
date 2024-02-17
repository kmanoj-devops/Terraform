terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}


# Specify the Docker host
provider "docker" {
  host = "unix:///var/run/docker.sock"
  #host = "ssh://user#remote-host:22"
  #host = "tcp://127.0.0.1:2376/" 
}

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

