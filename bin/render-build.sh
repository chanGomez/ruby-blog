# render-build.sh
#!/usr/bin/env bash
apt-get update -y
apt-get install -y libpq-dev
bundle install
