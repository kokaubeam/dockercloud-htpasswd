#!/bin/sh
if [ -z "$USERNAME" ]; then
  echo "ERROR: Username not set in \$USERNAME"
  exit 1
fi

if [ -z "$PASSWORD" ]; then
  echo "ERROR: Password not set in \$PASSWORD"
  exit 1
fi

if [ -z "$PASSWORDFILE" ]; then
  echo "ERROR: Password file not set in \$PASSWORDFILE"
  exit 1
fi

if [ ! -e "$PASSWORDFILE" ]; then
  echo "Creating password file ${PASSWORDFILE}"
  OPTIONS="c${OPTIONS}"
fi

OPTIONS="-b$OPTIONS"

htpasswd ${OPTIONS} ${PASSWORDFILE} ${USERNAME} ${PASSWORD}
