# Terraform Docker Container Deployment

This project uses **Terraform** with the [Docker provider](https://registry.terraform.io/providers/kreuzwerker/docker/latest) to pull a Docker image from **Docker Hub** and run it as a container.


## 🚀 Prerequisites

- [Docker](https://docs.docker.com/get-docker/) installed and running  
- [Terraform](https://developer.hashicorp.com/terraform/downloads) installed  
- Internet access to pull the image from Docker Hub  

> If using a private image, run `docker login` before applying Terraform.

---

## ⚙️ Configuration

By default, the project pulls the image:


and runs it on **port 3000**.

You can modify `main.tf` or `variables.tf` to adjust ports or container name.

---

## 🛠 Usage

1. Clone or create the project folder:
   ```bash
   mkdir my-docker-terraform && cd my-docker-terraform

## Initialize Terraform:

terraform init

## Apply the configuration:

terraform apply -auto-approve

## Verify the container is running:

docker ps


## Access the app in your browser at:

http://localhost:3000