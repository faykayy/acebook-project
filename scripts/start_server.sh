#!/bin/bash
cd /home/ec2-user/acebook
# This kills any old version of the app running on port 3000 before starting the new one
fuser -k 3000/tcp || true 
nohup npm start > /dev/null 2>&1 &