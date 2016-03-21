#!/usr/bin/env bash

cat > /etc/init/mailcatcher.conf << EOF
description "Mailcatcher"

start on runlevel [2345]
stop on runlevel [!2345]

respawn

exec su - vagrant -c 'mailcatcher -f --http-ip=0.0.0.0'
EOF

service mailcatcher start
