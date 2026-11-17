#!/usr/bin/env bash
# Installs the DevTune plugin from this checkout into an empty Codex home and
# fails unless Codex loads its MCP server at the URL in plugins/devtune/mcp.json.
# Codex drops a server it can't parse and still installs the plugin's skills, so
# a successful install alone proves nothing.
# Usage: scripts/check-codex-loads.sh   (needs codex and jq on PATH)
set -euo pipefail

repo=$(cd "$(dirname "$0")/.." && pwd)
want=$(jq -r '.mcpServers.devtune.url' "$repo/plugins/devtune/mcp.json")
CODEX_HOME=$(mktemp -d "${RUNNER_TEMP:-${TMPDIR:-/tmp}}/codex-home.XXXXXX")
export CODEX_HOME
trap 'rm -rf "$CODEX_HOME"' EXIT

codex --version
codex plugin marketplace add "$repo"
codex plugin add devtune@devtune-plugins

servers=$(codex mcp list --json)
got=$(jq -r '.[] | select(.name == "devtune" and .enabled) | .transport.url' <<<"$servers")

if [[ "$got" != "$want" ]]; then
  echo "Codex did not load the devtune MCP server (want $want, got '${got}')." >&2
  echo "codex mcp list --json:" >&2
  echo "$servers" >&2
  exit 1
fi
echo "Codex loads the devtune MCP server: $got"
