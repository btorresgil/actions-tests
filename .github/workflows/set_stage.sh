#!/bin/bash

case "${GITHUB_REF#refs/heads/}" in
  master)
    # echo "::set-env name=STAGE::prod"
    echo "::set-output name=auth::test1"
    ;;
  staging)
    # echo "::set-env name=STAGE::staging"
    echo "::set-output name=auth::test2"
    ;;
  *)
    exit 1
    ;;
esac
