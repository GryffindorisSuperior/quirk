#! /usr/bin/env bash
set -e

appver=$(cat app.json | jq '.expo.version' | sed "s/\"//g") 

echo "Tagging version as $appver"
git tag $appver
git push --tags
