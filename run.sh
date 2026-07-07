#!/bin/sh
set -e
(
  cd "$(dirname "$0")" # Ensure compile steps are run within the repository directory
  go build -o /tmp/codecrafters-build-claude-code-go app/*.go
)
exec /tmp/codecrafters-build-claude-code-go "$@"
