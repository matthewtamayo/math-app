#!/bin/bash

echo "sha" $GITHUB_SHA
echo "tags"
PREVIOUS_TAG_COMMIT=$(git rev-list -n 1 $(git describe --tags)^)
git rev-list $GITHUB_SHA ^$PREVIOUS_TAG_COMMIT --timestamp