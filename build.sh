#!/usr/bin/env bash
set -o errexit

# Install Python deps
pip install -r requirements.txt

# Collect static assets (CSS/JS/images)
python manage.py collectstatic --noinput

# Run migrations (safe even if none)
python manage.py migrate
