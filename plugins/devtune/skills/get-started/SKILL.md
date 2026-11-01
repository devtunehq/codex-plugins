---
name: get-started
description: Use right after DevTune is installed, or when the user asks which DevTune project is connected, what the plugin can do, or why a DevTune tool was refused.
---

# Get started with DevTune

Confirm what the connection can reach, then show the user one useful number.

1. Call `devtune_get_connection_context`. Tell the user the project name and
   its domains. If `paused` is true, say the project is paused, so DevTune can
   only read its data until someone resumes it in the DevTune app.
2. Read `scopes` and `features` and tell the user, in plain words, what this
   connection can do: read data only, or also manage prompts, actions and
   agents. Don't list raw scope strings unless the user asks.
3. Call `devtune_get_visibility_summary` for the last 30 days. Report brand
   awareness, citation presence and share of voice, and name the platforms in
   `measurement.reportablePlatforms`. If a value is null or a platform has no
   data, report it as not measured. Don't report it as zero.
4. Offer three next steps: compare against competitors, review the Actions
   queue, or check AI Traffic.

If the first call fails with an authorization error, tell the user to
reconnect DevTune and choose the project again. To use a different project,
they reconnect and choose that project, because each connection reaches one
project.
