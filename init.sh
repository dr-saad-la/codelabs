#!/bin/bash

# init.sh
# Usage: ./init.sh <name-of-codelab>

command_exists() {
    command -v "$1" >/dev/null 2>&1
    if [[ $? -ne 0 ]]; then
        echo "Note: $1 does not exist. Please install it first!"
        exit 1
    fi
}

if [ "$#" -ne 1 ]; then
    echo "USAGE: $0 <CODELAB_NAME>"
    echo ""
    exit 1
fi

CODELAB_NAME=$1
AUTHOR_NAME="Dr Saad Laouadi"
PROJECTS_MARKDOWN_DIR="projects-markdown/$CODELAB_NAME"
CODELABS_DIR="codelabs/$CODELAB_NAME"
MARKDOWN_TEMPLATE="templates/markdown.template"
PACKAGE_JSON_TEMPLATE="templates/package.json"

# Ensure the claat command exists
command_exists claat

# Create a new directory for the codelab
mkdir -p $PROJECTS_MARKDOWN_DIR
mkdir -p $CODELABS_DIR

# Copy and customize the markdown template
cp $MARKDOWN_TEMPLATE $PROJECTS_MARKDOWN_DIR/$CODELAB_NAME.md
sed -i '' "s/<CODELAB_NAME>/$CODELAB_NAME/g" $PROJECTS_MARKDOWN_DIR/$CODELAB_NAME.md

# Copy and customize the package.json template
cp $PACKAGE_JSON_TEMPLATE $PROJECTS_MARKDOWN_DIR/package.json
sed -i '' "s/<CODELAB_NAME>/$CODELAB_NAME/g" $PROJECTS_MARKDOWN_DIR/package.json

echo "Codelab $CODELAB_NAME initialized successfully at $PROJECTS_MARKDOWN_DIR"
