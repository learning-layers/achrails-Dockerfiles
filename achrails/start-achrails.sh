#!/bin/env bash

# Install gemfiles
bundle install

# Setup database
rake db:create
rake db:migrate

# Precompile assets
bundle exec rake assets:precompile

# Purge in the background
./purge-sessions.sh &

# Start the server
exec rails server -b 0.0.0.0 -p 3000

