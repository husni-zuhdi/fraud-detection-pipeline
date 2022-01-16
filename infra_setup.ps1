# Check if docker is curently running
if (!(docker info) 2>&1>$null) {
    echo "Docker does not seem to be running, run it first and retry"
    exit 1
}

# Spin up docker compose
docker-compose up -d
docker ps

# Manual Checking
# used to check the first 10 messages in the server-logs  topic
docker exec -t "$($(Split-Path -Path $pwd -Leaf).ToLower())_kafka_1" kafka-console-consumer.sh `
--bootstrap-server :9092 `
--topic server-logs `
--from-beginning `
--max-messages 10
# used to check the first 10 messages in the alerts topic
docker exec -t "$($(Split-Path -Path $pwd -Leaf).ToLower())_kafka_1" kafka-console-consumer.sh `
--bootstrap-server :9092 `
--topic alerts `
--from-beginning `
--max-messages 10

# Sleep for 2 minutes
sleep 120

# Check Postgres Database
psql -f ./postgres_check.sql postgres://postgres:p@s5wOrd@$localhost:5432/events