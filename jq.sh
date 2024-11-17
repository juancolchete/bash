#!/bin/sh
userCount=`cat sample.json | jq -r '.users | length'`
echo userCount: $userCount
userFriendsIds=`jq '.users[] | select(.name == "Jane")' sample.json | jq -r '.friends'`
userFriends=`jq '.users[] | select(.name == "Jane")' sample.json | jq -r '.friends'`
echo userFriends: $userFriends

