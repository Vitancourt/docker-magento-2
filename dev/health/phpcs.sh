#!/usr/bin/env sh

echo "Running PHP Code Sniffer..."
dev/bin/cli phpcs ./app "$@" --standard=phpcs-rulesets.xml --extensions=php
echo ""
