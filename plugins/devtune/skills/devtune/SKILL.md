---
name: devtune
description: Use when the user asks Codex to inspect DevTune data, AI search visibility, AI answer citations, competitor positioning, DevTune actions, or DevTune workspace insights through MCP.
---

# DevTune MCP

Use the DevTune MCP server when the user asks for DevTune workspace data or AI search intelligence.

Before calling DevTune MCP tools, make sure the user has connected the plugin and provided a valid DevTune API key through `DEVTUNE_API_KEY`. If the MCP server is unavailable or authentication fails, explain that the DevTune API key or plugin connection needs attention.

Prefer MCP-backed data over guesses for:

- AI search visibility and brand mentions.
- Citation and source analysis.
- Competitor comparisons.
- Recommended DevTune actions.
- Workspace, site, or project insights exposed by DevTune.

Relevant tool families include visibility summaries, competitive position, citation analysis, actions, action briefs, traffic summaries, adoption metrics, and content gaps. Treat all DevTune MCP tools as read-only.

Keep responses grounded in the returned DevTune data. When the user asks for strategic recommendations, separate observed DevTune data from your own interpretation.
