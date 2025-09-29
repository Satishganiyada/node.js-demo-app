#  Install Docker and Minikube
[link to install](https://itsfoss.gitlab.io/blog/how-to-install-minikube-for-kubernetes-on-ubuntu-2404/)

### If you want to build Docker images directly inside Minikube’s Docker daemon (avoid pushing to Docker Hub), run after minikube start:
## eval $(minikube -p minikube docker-env)

### Create a  Python application and Write Dockerfile to it

### Build Image to that application

### Create Deployment.yaml and Service.yaml files

### Run the commands
## kubectl apply -f deployment.yaml
## kubectl apply -f service.yaml

### Verify pods
## kubectl get pods

### Scale the Deployment
## kubectl scale deployment myapp-deployment --replicas=4



