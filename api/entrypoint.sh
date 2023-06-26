#!/bin/sh

# python manage.py migrate --no-input
# python manage.py collectstatic --no-input

gunicorn -b :5000 --workers 4 --pythonpath ./ app:app
