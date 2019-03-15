#!/usr/bin/env bash

CMD=$1

case "$CMD" in
  "bash" )
    exec /usr/bin/env bash
    ;;
  * )
    exec /usr/bin/env bash
    ;;
esac
