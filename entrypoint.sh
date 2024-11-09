#!/bin/bash

echo "DB Migrations:"
ftcli db upgrade

# Start the Gunicorn server
exec gunicorn -w 4 -b 0.0.0.0:8000 --timeout 120 "fittrackee:create_app()"
