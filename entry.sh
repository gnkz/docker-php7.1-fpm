#!/bin/sh

source /usr/bin/setup

exec /sbin/su-exec $USERNAME "$@"
