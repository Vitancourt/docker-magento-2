#!/usr/bin/env sh

echo "Running Unit tests..."
dev/bin/cli php /src/vendor/bin/phpunit "dev/tests/unit/$@"
echo ""
