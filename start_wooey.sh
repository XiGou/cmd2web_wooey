#! /bin/bash
nohup celery -A cmd2web_wooey worker -c 3 --beat -l info &
python3.7 manage.py runserver 0.0.0.0:8000