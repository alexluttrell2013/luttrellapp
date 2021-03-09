#!/bin/sh


nginx -t
nginx

exec "$@"