#!/usr/bin/env sh

echo "Running Unit tests..."
bin/cli php /src/vendor/bin/phpunit "dev/tests/unit/$@"
echo ""
