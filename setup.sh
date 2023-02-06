# Author : @loadingthedev
# Description: This script will setup the project for you

# Remove node_modules folder if it exists
rm -rf node_modules

# Install dependencies
npm ci

# start Docker
docker-compose up -d

# Wait for 20 seconds for the database to start up
sleep 20
echo "Waiting for 20 seconds for the database to start up..."

# Run migrations
npm run migrate