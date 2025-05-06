#!/bin/bash
set -e

APP_NAME="flask-app"
IMAGE_NAME="akhileshsoni/sample-python-flask-project"
HOST_PORT=5000
CONTAINER_PORT=5000

echo "🚀 Pulling the latest image from Docker Hub..."
docker pull "$IMAGE_NAME"

echo "🧹 Stopping and removing any existing container with name $APP_NAME (if exists)..."
docker rm -f "$APP_NAME" || true

echo "🐳 Running new container from image..."
docker run -d -p "$HOST_PORT:$CONTAINER_PORT" --name "$APP_NAME" "$IMAGE_NAME"

echo "✅ Container $APP_NAME is running and mapped to http://localhost:$HOST_PORT"

