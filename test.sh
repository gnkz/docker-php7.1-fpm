#!/usr/bin/env bash

DIR="${BASH_SOURCE%/*}"                                                                 
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi                                               
. "$DIR/build.sh"

TEST_NAME=gnkz_php_fpm71_test

docker run --rm -d --name $TEST_NAME $USERNAME/$REPONAME:$TAG

docker ps | grep $TEST_NAME

STATUS=$?

docker stop $TEST_NAME

exit $?
