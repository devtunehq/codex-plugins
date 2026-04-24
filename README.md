# DevTune Codex Plugins

Codex plugin marketplace for DevTune.

## Install

Add this marketplace to Codex:

```bash
codex plugin marketplace add devtunehq/codex-plugins --ref main
```

Then restart Codex, open the plugin directory, choose `DevTune Plugins`, and install the DevTune plugin.

## Configure

The DevTune plugin connects to the DevTune MCP server using a DevTune API key:

```bash
export DEVTUNE_API_KEY=dtk_live_YOUR_API_KEY_HERE
```

After installing the plugin and setting `DEVTUNE_API_KEY`, ask Codex to use DevTune for AI search visibility, competitive positioning, citations, actions, or workspace analysis.
