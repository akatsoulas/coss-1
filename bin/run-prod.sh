#!/bin/sh

./bin/run-common.sh
gunicorn coss.wsgi:application -b 0.0.0.0:${PORT:-8000} --log-file -
