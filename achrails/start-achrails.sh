#!/bin/env bash

# Setup database
rake db:create
rake db:migrate

# Purge in the background
./purge-sessions.sh &

# Start the server
exec rails server -b 0.0.0.0 -p 3000

