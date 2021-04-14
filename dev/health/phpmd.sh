#!/usr/bin/env sh

echo "Running PHP Mess Detector..."
bin/cli phpmd ./app text phpmd-rulesets.xml
echo ""
