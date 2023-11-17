# Pulls the image
resource "docker_image" "fedora" {
  name = "fedora:latest"
}

# Create a container
resource "docker_container" "fedora" {
  image = docker_image.fedora.image_id
  name  = "fedora"
  tty = true

  ports {
    internal = "2222"
    external = "2222"
  }
}

