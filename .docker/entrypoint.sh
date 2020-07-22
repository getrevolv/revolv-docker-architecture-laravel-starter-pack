#!/bin/bash

set -e

php artisan config:cache --env=production

# Uncomment if you don't have any route set as closure
# php artisan route:cache --env=production

php artisan view:cache --env=production

supervisord