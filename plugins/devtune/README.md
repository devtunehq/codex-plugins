# DevTune Codex Plugin

Connect Codex to DevTune through the DevTune MCP server.

## Requirements

- A DevTune account.
- A Codex version with MCP OAuth support.

## MCP Server

This plugin configures the DevTune MCP endpoint:

```text
https://devtune.ai/api/mcp
```

Authentication uses MCP OAuth. Sign in with DevTune when Codex prompts for authorization, then choose the project the MCP server should access. Do not manually request DevTune API key scopes during OAuth login; DevTune maps the selected project and your account permissions to MCP tool access.

## Usage

After installing the plugin and authorizing DevTune, ask Codex to use DevTune for AI search visibility, competitive positioning, citations, actions, or workspace analysis.

The DevTune MCP server exposes tools for visibility summaries, competitive position, citations, actions, action briefs, traffic, adoption metrics, and content gaps. Most tools read project data; write-capable operations such as action brief generation require DevTune management permission for the selected account.

Example prompts:

- Use DevTune to summarize my AI search visibility.
- Find DevTune actions that need attention.
- Compare my brand against competitors in DevTune.

## License

This plugin is available under the MIT License. See the repository [LICENSE.md](../../LICENSE.md).
