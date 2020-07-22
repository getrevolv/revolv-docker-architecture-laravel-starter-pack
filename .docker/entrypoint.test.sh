#!/bin/bash

set -e

if [[ $DATABASE_URL != *_test ]]; then
  echo "Database must be a test database";
  exit 1;
fi

php artisan migrate
php artisan config:clear

exec "$@"