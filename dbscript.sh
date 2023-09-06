#!/bin/bash

# Update the package list to get the latest information about available packages
sudo apt-get update

# Install PostgreSQL and its command-line tools
sudo apt-get install -y postgresql postgresql-contrib

# Start the PostgreSQL service
sudo systemctl start postgresql.service

# Create a PostgresSQL database
sudo -u postgres psql -c "CREATE DATABASE flask_db;"

# Create a PostgreSQL user and grant privileges on the database
sudo -u postgres psql -c "CREATE USER adi WITH PASSWORD 'adikoren';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE flask_db TO adi;"

echo "listen_addresses = '*'" | sudo tee -a /etc/postgresql/*/main/postgresql.conf
echo "host all all 10.0.1.4 md5" | sudo tee -a /etc/postgresql/*/main/pg_hba.conf
echo service postgresql restart 


