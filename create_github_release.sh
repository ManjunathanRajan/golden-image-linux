#!/bin/bash

set -e

NEW_TAG="$1"
GITHUB_PAT="$2"
RELEASE_TITLE="golden-ami-amazon-linux-2023 $NEW_TAG"
RELEASE_DESCRIPTION="This is the release for golden-ami-amazon-linux-2023 $NEW_TAG. This release includes the latest updates and improvements.\n\n- Default region: us-west-2\n- EC2 > AMIs > Filter by Private images"

curl -X POST -H "Authorization: token $GITHUB_PAT" -H "Content-Type: application/json" -d "{\"tag_name\":\"$NEW_TAG\",\"target_commitish\":\"main\",\"name\":\"$RELEASE_TITLE\",\"body\":\"$RELEASE_DESCRIPTION\"}" https://api.github.com/repos/ManjunathanRajan/golden-image-windows/releases
