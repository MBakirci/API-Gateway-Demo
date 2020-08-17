# !/usr/bin/env bash

docker rm -f consul || true
docker rm -f gateway || true
docker rm -f product || true
docker rm -f weather || true