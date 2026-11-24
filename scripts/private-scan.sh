#!/usr/bin/env bash
set -euo pipefail

pattern="${PRIVATE_SCAN_PATTERN:-}"
if [[ -z "$pattern" ]]; then
  printf '%s\n' 'PRIVATE_SCAN_PATTERN is unset or empty. Run PRIVATE_SCAN_PATTERN="<regex>" ./scripts/private-scan.sh or export PRIVATE_SCAN_PATTERN.' >&2
  exit 2
fi

repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"

status=0
git grep -a -n -i -E -e "$pattern" -- . || status=$?

if [[ "$status" -eq 0 ]]; then
  exit 1
fi

if [[ "$status" -eq 1 ]]; then
  exit 0
fi

exit "$status"
