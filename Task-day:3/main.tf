terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nodejs_app" {
  name = "satish2323/nodejsapp:latest"
  keep_locally = false
}

resource "docker_container" "nodejs_app_container" {
  name  = "nodejs_app"
  image = docker_image.nodejs_app.latest

  ports {
    internal = 3000
    external = 3000
  }
}
