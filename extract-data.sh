#!/bin/bash

echo "sha" $GITHUB_SHA
LATEST_TAG=$(git describe --abbrev=0)
echo "LATEST TAG="$LATEST_TAG
PREV_TAG=$(git describe --abbrev=0 $LATEST_TAG^)
echo "PREV TAG="$PREV_TAG
PREVIOUS_TAG_COMMIT=$(git rev-list -n 1 $PREV_TAG)
echo "PREVIOUS TAG COMMIT="$PREVIOUS_TAG_COMMIT
echo "list of commits"
git rev-list $GITHUB_SHA ^$PREVIOUS_TAG_COMMIT --timestamp