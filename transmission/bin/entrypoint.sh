#!/bin/sh

set -e

cd /opt/transmission/var

# Default config.
[[ ! -f config.yml ]] && dockerize -template ../config.tmpl.yml:config.yml
[[ ! -f settings.json ]] && cp ../settings.json .

exec "${@:-sh}"
