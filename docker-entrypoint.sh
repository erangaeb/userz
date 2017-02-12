#!/bin/bash

# apply database migrations
python manage.py syncdb --noinput
#python manage.py migrate tastypie
#python manage.py migrate api

# start server
python manage.py runserver 0.0.0.0:8000
