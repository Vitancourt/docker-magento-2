#!/usr/bin/env sh

echo "Running PHP Copy Past Detector..."
dev/bin/cli phpcpd --fuzzy ./app ./test
echo ""
