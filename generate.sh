#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
PLAYBOOKS_DIR="playbooks"
TARGET="${SCRIPT_DIR}/${PLAYBOOKS_DIR}/*"
BASE_URL="https://xenophy.github.io/xdsp/playbooks"

echo "playbooks:" > "$SCRIPT_DIR"/update_list.yml

for f in $TARGET; do

  BASENAME=`basename $f`
  NAME=`echo $BASENAME | sed 's/\.[^\.]*$//'`

  echo "  $NAME: $BASE_URL/$BASENAME" >> "$SCRIPT_DIR"/update_list.yml

done

echo "complete."
