# Check if docker is curently running
if (!(docker info) 2>&1>$null) {
    echo "Docker does not seem to be running, run it first and retry"
    exit 1
}

# Spin down docker compose
docker compose down