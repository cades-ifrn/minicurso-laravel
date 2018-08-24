#!/bin/bash

set -e

docker-compose down

echo "Building..."
docker-compose build

echo "Starting db..."
docker-compose up -d
until docker-compose exec db psql -U postgres -c '\l' >/dev/null 2>&1; do
  echo "PostGIS is unreachable - sleeping"; sleep 2
done

if [[ ! -f "./src/.env" ]]; then
  cp ./src/.env.example ./src/.env
fi

echo "Install dependencies..."
docker-compose exec app composer install --prefer-dist

echo "Applying migrations..."
docker-compose exec app php artisan migrate

echo "Setting permissions..."
docker-compose exec app chown -R :www-data .
docker-compose exec app chmod -R 775 storage

docker-compose down