#!/bin/bash

case "$1" in
  refs/heads/master)
    echo "::set-env name=STAGE::prod"
    echo "::set-output name=auth::test1"
    ;;
  refs/heads/staging)
    echo "::set-env name=STAGE::staging"
    echo "::set-output name=auth::test2"
    ;;
  *)
    exit 1
    ;;
esac
