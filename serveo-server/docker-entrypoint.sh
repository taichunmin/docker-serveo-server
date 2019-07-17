#!/bin/sh
set -e

if [ "$1" = 'serveo' ]; then
  if [ ! -f /root/.ssh/id_ed25519 ]; then
    ssh-keygen -t ed25519 -f /root/.ssh/id_ed25519 -N "" -q
  fi

  exec "$@"
fi

exec "$@"
