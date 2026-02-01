#!/bin/bash

# Usage: ./new_project.sh "professional" "Project Title"
# Or: ./new_project.sh "personal" "Project Title"

TYPE=$1
TITLE=$2

if [[ -z "$TYPE" || -z "$TITLE" ]]; then
  echo "Usage: $0 [professional|personal] \"Project Title\""
  exit 1
fi

if [[ "$TYPE" != "professional" && "$TYPE" != "personal" ]]; then
  echo "Error: Type must be 'professional' or 'personal'"
  exit 1
fi

# Create slug
SLUG=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-//;s/-$//')
DATE=$(date +%Y-%m-%d)
FILENAME="_posts/$DATE-$SLUG.md"

if [[ -f "$FILENAME" ]]; then
  echo "Error: File $FILENAME already exists."
  exit 1
fi

cat <<EOF > "$FILENAME"
---
layout: post
title: $TITLE
date: $DATE
categories: $TYPE
---

[Add project description here]

### Key Features / Contributions:
- Feature 1
- Feature 2
EOF

echo "Success! Created $FILENAME"
echo "You can now edit the file to add details."
