#!/bin/bash

echo "sha" $GITHUB_SHA
PREV_TAG=$(git describe --tags)
echo "prev tags" $PREV_TAG
echo "tags"
PREVIOUS_TAG_COMMIT=$(git rev-list -n 1 $PREV_TAG^)
echo $PREVIOUS_TAG_COMMIT
git rev-list $GITHUB_SHA ^$PREVIOUS_TAG_COMMIT --timestamp