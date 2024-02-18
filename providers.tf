terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

# Specify the Docker host
provider "docker" {
  host = "unix:///var/run/docker.sock"
  #host = "ssh://user#remote-host:22"
  #host = "tcp://127.0.0.1:2376/"
}

