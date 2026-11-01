# DevTune plugin for ChatGPT and Codex

Connects ChatGPT and Codex to your DevTune project through the DevTune MCP
server at `https://devtune.ai/api/mcp`.

## Requirements

- A DevTune account with a project.

## Connect

Install the plugin, then sign in to DevTune when prompted and choose the
project this connection should use. The connection can do what your DevTune
role allows in that project. To switch projects, reconnect and choose another.

## What it covers

- **Visibility:** brand awareness, citation presence and share of voice, the AI
  responses behind them, competitors, cited sites and content gaps.
- **AI Traffic:** crawls, answer fetches and AI-referred visits, plus 404
  demand.
- **Actions:** the ranked fix queue, briefs, drafts and the site Audit.
- **Results:** before/after measurement for shipped actions.
- **Agents:** managed agents and Dex.

Tools that change project data or spend DevTune credits ask for your approval
first. DevTune never publishes content for you.

## Package layout

- `plugin.json`: plugin identity and the ChatGPT/Codex listing.
- `mcp.json`: the DevTune MCP server and its OAuth settings.
- `skills/get-started`: the setup skill that runs after install.
- `skills/devtune`: how to use the DevTune tools and report their numbers.

## Example prompts

- How visible is my product in AI answers this month?
- Which competitors get cited instead of us, and where?
- What should we fix first to improve our AI visibility?

## License

MIT. See [LICENSE.md](../../LICENSE.md).
