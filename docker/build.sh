#!/bin/sh -e

TOPDIR=$(cd $(dirname $0)/.. && pwd)

cd $TOPDIR && docker build -t gengo/pghero_logs -f docker/Dockerfile .
