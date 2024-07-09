#!/bin/bash

# deploy.sh
# Usage: ./deploy.sh <name-of-codelab>

if [ "$#" -ne 1 ]; then
    echo "USAGE: $0 <CODELAB_NAME>"
    echo ""
    exit 1
fi

CODELAB_NAME=$1
PROJECTS_MARKDOWN_DIR="./projects-markdown/$CODELAB_NAME"
CODELABS_DIR="./codelabs/$CODELAB_NAME"
GITHUB_REPO_URL="https://github.com/dr-saad-la/codelabs.git"

# Check if the markdown file exists
if [ ! -f "$PROJECTS_MARKDOWN_DIR/$CODELAB_NAME.md" ]; then
    echo "ERROR: Markdown file $PROJECTS_MARKDOWN_DIR/$CODELAB_NAME.md does not exist."
    exit 1
fi

# Export the codelab
cd $PROJECTS_MARKDOWN_DIR
claat export -o $CODELABS_DIR $CODELAB_NAME.md

# Navigate to the codelab directory
cd $CODELABS_DIR

# Add changes to git
git add .
git commit -m "Deploy $CODELAB_NAME to GitHub Pages"

# Push to the gh-pages branch
git push --force "$GITHUB_REPO_URL" main:gh-pages

# Update the index.md with the link to the codelab
INDEX_FILE="../../index.md"
CODELAB_URL="https://dr-saad-la.github.io/codelabs/$CODELAB_NAME/"

if grep -q "$CODELAB_URL" "$INDEX_FILE"; then
    echo "Link to $CODELAB_NAME already exists in index.md"
else
    sed -i '' '/## Programming Languages/a\
- ['$CODELAB_NAME']('$CODELAB_URL')' "$INDEX_FILE"
    cd ../..
    git add index.md
    git commit -m "Add link to $CODELAB_NAME in index.md"
    git push
fi

echo "Deployment completed."
