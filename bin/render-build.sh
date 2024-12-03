#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
<<<<<<< HEAD
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate
bundle exec rails db:seed

=======
chmod +x bin/*
bundle exec rake db:migrate
>>>>>>> c479e2f4834e7e7070fe012f2a37d4de6406f71c
