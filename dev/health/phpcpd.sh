#!/usr/bin/env sh

echo "Running PHP Copy Past Detector..."
bin/cli phpcpd --fuzzy ./app ./test
echo ""
