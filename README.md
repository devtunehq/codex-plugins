# DevTune Codex Plugins

Codex plugin marketplace for DevTune.

## Install

Add this marketplace to Codex:

```bash
codex plugin marketplace add devtunehq/codex-plugins --ref main
```

Then restart Codex, open the plugin directory, choose `DevTune Plugins`, and install the DevTune plugin.

## Configure

The DevTune plugin connects to the DevTune MCP server with MCP OAuth. After installing the plugin, authorize DevTune when Codex prompts you, sign in, and choose the project the MCP server should access.

OAuth connections use your signed-in DevTune account permissions. Read tools use your selected project access, and write-capable tools such as action brief generation are available only when your account permissions allow DevTune management.

API keys are only needed for non-interactive MCP clients or fallback setups that cannot complete OAuth. For Codex plugin installs, OAuth is the expected path.

After authorizing DevTune, ask Codex to use DevTune for AI search visibility, competitive positioning, citations, actions, or workspace analysis.
