#!/bin/sh
set -eu

# download log from rds
pghero_logs download

# parse yesterday's log
target=`date +%Y-%m-%d -d "1 day ago"`
cat $LOG_PATH/postgresql.log.$target* | pghero_logs
