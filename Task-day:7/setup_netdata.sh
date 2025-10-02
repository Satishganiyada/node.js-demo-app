#!/bin/bash

# Setup Netdata Monitoring via Docker
echo "🚀 Starting Netdata setup..."

# Step 1: Pull Netdata Docker image
echo "📥 Pulling Netdata image..."
docker pull netdata/netdata

# Step 2: Run Netdata container
echo "📦 Running Netdata container..."
docker run -d --name=netdata \
  -p 19999:19999 \
  --cap-add=sys_ptrace \
  --security-opt apparmor=unconfined \
  netdata/netdata

# Step 3: Verify container
echo "✅ Checking if Netdata is running..."
docker ps | grep netdata

echo "🎯 Netdata is running!"
echo "👉 Access the dashboard at: http://localhost:19999"
echo "👉 If remote server: http://<your-server-ip>:19999"
echo ""
echo "📊 You can monitor CPU, memory, disk, network, and Docker containers."
echo "🔔 Alerts will show up in the dashboard."
echo ""
echo "📝 Logs are inside the container at /var/log/netdata"
echo "   Example: docker exec -it netdata cat /var/log/netdata/error.log"
