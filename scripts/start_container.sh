#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull akhileshsoni/sample-python-flask-project

# Run the Docker image as a container
#new commit
docker run -d -p 5000:5000 akhileshsoni/sample-python-flask-project
