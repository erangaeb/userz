#!/bin/bash

# apply database migrations
# didn't use 'south' in order to keep things simple 
# --noinput used to sync without creating superuser
python manage.py syncdb --noinput

# start server
python manage.py runserver 0.0.0.0:8000
