#!/usr/bin/env bash
set -euo pipefail

# 传入 rustflags 参数
RUSTFLAGS_INPUT="$*"

if [[ -n "$RUSTFLAGS_INPUT" ]]; then
  echo "Setting RUSTFLAGS=$RUSTFLAGS_INPUT"
  echo "RUSTFLAGS=$RUSTFLAGS_INPUT" >> $GITHUB_ENV
else
  echo "No RUSTFLAGS set"
fi
