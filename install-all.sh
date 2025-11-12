#!/usr/bin/env bash

# sudo dnf update --refresh
# flatpak update -y

# Install everything else

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APPS_DIR="$SCRIPT_DIR/apps"

if [[ ! -d "$APPS_DIR" ]]; then
  echo "apps directory not found: $APPS_DIR"
  exit 1
fi

for installer in "$APPS_DIR"/install-*.sh; do
  [[ -f "$installer" ]] || continue
  bash "$installer"
done
