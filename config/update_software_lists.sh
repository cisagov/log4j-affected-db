#!/usr/bin/env bash

# This script is used to do the following:
# - Normalize each of the data/cisagov_*.yml files.
# - Update the comprehensive data/cisagov.yml file.
# - Generate each software_lists/software_list_*.md file from its respective
#   data/cisagov_*.yml file.

set -o nounset
set -o errexit
set -o pipefail

OUTPUT_DIRECTORY=software_lists
TEMPLATE_FILE=config/SOFTWARE-LIST.tpl.md

echo Normalize individual cisagov YAML files
for file in data/cisagov_*.yml; do
  echo "  $file..."
  normalize-yml --cisagov-format "$file" > "$file".tmp
  mv --force "$file".tmp "$file"
done

echo Update the comprehensive cisagov YAML file
normalize-yml --cisagov-format data/cisagov_*.yml > data/cisagov.yml

echo Generate Markdown files from the individual cisagov YAML files
for file in data/cisagov_*.yml; do
  echo "  $file..."
  # Convert the file path data/cisagov_*.yml to software_list_*.md
  md_file=$(echo "$file" | sed 's/data\/cisagov_\(.\+\)yml/software_list_\1md/g')
  normalize-yml "$file" > "$file.tmp"
  yml2md "$file.tmp" > "$md_file.tmp"
  md-from-template $TEMPLATE_FILE "$md_file.tmp" > "$OUTPUT_DIRECTORY/$md_file"
done
