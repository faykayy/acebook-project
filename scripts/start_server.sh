#!/bin/bash
set -e
cd /home/ec2-user/acebook
# Kill any existing node process on port 3030 (or 3000)
sudo fuser -k 3030/tcp || true
# Start the app in the background
nohup npm start > /home/ec2-user/acebook/app.log 2>&1 &