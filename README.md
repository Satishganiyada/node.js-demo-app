# Simple Node.js CI/CD Demo with Jenkins

This is a **minimal Node.js web app** to demonstrate a Jenkins pipeline with:
- Test stage
- Build stage (Docker image)
- Deploy stage (run container locally)

## 🚀 Run locally without Jenkins
```bash
docker build -t simple-node-demo .
docker run -d -p 3000:3000 simple-node-demo
curl http://localhost:3000
