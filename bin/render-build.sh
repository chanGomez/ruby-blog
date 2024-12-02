#!/usr/bin/env bash
apt-get update -y
apt-get install -y libpq-dev
bundle install
bundle exec rails db:setup
bundle exec rails assets:precompile
