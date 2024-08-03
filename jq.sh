#!/bin/sh
userCount=`cat sample.json | jq -r '.users | length'`
echo userCount: $userCount
