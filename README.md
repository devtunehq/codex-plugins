# DevTune plugins

Plugin marketplace for DevTune in ChatGPT and Codex.

## Install in Codex

```bash
codex plugin marketplace add devtunehq/codex-plugins --ref main
```

Restart Codex or the ChatGPT desktop app, open the Plugins Directory, choose
`DevTune Plugins` and install DevTune. Sign in to DevTune when prompted and
choose the project the connection should use.

API keys are for MCP clients that can't complete OAuth. See the
[MCP server docs](https://docs.devtune.ai/api-reference/mcp-server).

## Build the submission ZIP

The plugin directory takes the plugin folder as a ZIP:

```bash
cd plugins/devtune && zip -r ../../devtune-plugin.zip . -x '.*'
```

## License

MIT. See [LICENSE.md](./LICENSE.md).
