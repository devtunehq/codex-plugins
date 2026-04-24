# DevTune Codex Plugin

Connect Codex to DevTune through the DevTune MCP server.

## Requirements

- A DevTune account.
- A DevTune API key available as `DEVTUNE_API_KEY`.

## MCP Server

This plugin configures the DevTune MCP endpoint:

```text
https://app.devtune.ai/api/mcp
```

Authentication is sent as a bearer token:

```text
Authorization: Bearer ${DEVTUNE_API_KEY}
```

## Usage

After installing the plugin and setting `DEVTUNE_API_KEY`, ask Codex to use DevTune for AI search visibility, competitive positioning, citations, actions, or workspace analysis.

The DevTune MCP server exposes read-only tools for visibility summaries, competitive position, citations, actions, action briefs, traffic, adoption metrics, and content gaps.

Example prompts:

- Use DevTune to summarize my AI search visibility.
- Find DevTune actions that need attention.
- Compare my brand against competitors in DevTune.
