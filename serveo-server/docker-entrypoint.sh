#!/bin/bash
set -e

if [ "$1" = 'serveo' ]; then
  if [ ! -f /root/.ssh/id_ecdsa ]; then
    ssh-keygen -t ecdsa -b 521 -f /root/.ssh/id_ecdsa -N "" -q
  fi

  exec "$@"
fi

exec "$@"