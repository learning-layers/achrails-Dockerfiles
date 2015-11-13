#!/bin/env bash

# Setup database
rake db:create
rake db:migrate

# Precompile assets
bundle exec rake assets:precompile

# Start the server
exec rails server -b 0.0.0.0 -p 3000

