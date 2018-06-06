#!/bin/bash

export PGPASSWORD='node_password'

database="monsters_db"
echo "Configuring database : $database"
dropdb -U node_user monsters_db
createdb -U node_user monsters_db

psql -U node_user -d monsters_db < ./sql/monsters.sql

echo "$database configured"
