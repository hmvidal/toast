#!/usr/bin/env bash

CMD=$1

case "$CMD" in
  "bash" )
    exec /usr/bin/env bash
    ;;
  * )
    exec jupyter notebook              \
      --port=8888                      \
      --no-browser                     \
      --ip=0.0.0.0                     \
      --notebook-dir=/home/toast       \
    ;;
esac
