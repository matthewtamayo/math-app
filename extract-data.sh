#!/bin/bash

echo "sha" $GITHUB_SHA
echo "tags"
LATEST_TAG=$(git describe --abbrev=0)
PREV_TAG=$(git describe --abbrev=0 $LATEST_TAG^)
PREVIOUS_TAG_COMMIT=$(git rev-list -n 1 $PREV_TAG)
echo $PREVIOUS_TAG_COMMIT
git rev-list $GITHUB_SHA ^$PREVIOUS_TAG_COMMIT --timestamp