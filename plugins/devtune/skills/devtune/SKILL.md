---
name: devtune
description: Use when the user asks what AI platforms say about their product, how visible or cited they are in AI answers, which competitors get cited, AI crawler or AI referral traffic, what to fix next, whether shipped fixes worked, or to run a DevTune agent.
---

# DevTune

DevTune measures what AI answer engines tell buyers about the user's product,
ranks the fixes most likely to change it, and measures each fix after it
ships. Each connection reaches one DevTune project. Answer from DevTune tool
results, not from general knowledge.

## Pick the starting tool

| The user asks about | Start with |
| --- | --- |
| How visible they are in AI answers | `devtune_get_visibility_summary`, then `devtune_get_visibility_diff` for change |
| Competitors | `devtune_get_competitive_position` |
| Which sites AI cites | `devtune_get_top_citation_domains`, `devtune_get_top_citation_pages` |
| What an AI platform actually said | `devtune_list_visibility_responses`, then `devtune_get_visibility_response` |
| Topics where competitors are cited and they aren't | `devtune_get_content_gaps`, then `devtune_get_content_gap_evidence` |
| AI crawlers, answer fetches, AI referrals | `devtune_get_traffic_summary`, `devtune_get_traffic_platforms`, `devtune_get_ai_referrals` |
| Pages AI keeps requesting that don't exist | `devtune_get_404_demand` |
| What to fix next | `devtune_get_actions`, then `devtune_get_action_brief` |
| Site readiness for AI (crawlability, `llms.txt`) | `devtune_get_audit_summary`, `devtune_get_audit_findings` |
| Whether shipped fixes worked | `devtune_get_outcomes_ledger` |
| Running an agent or talking to Dex | `devtune_list_agents`, then `devtune_run_agent` or `devtune_start_dex_conversation` |

If a tool returns an error about a missing scope or feature, call
`devtune_get_connection_context` and tell the user what the connection lacks.

## Report numbers the way DevTune measures them

- A citation is an AI answer linking to a URL. A mention is the brand named
  without a link. Keep them separate.
- Share of voice compares the user's citations with their configured
  competitors' citations only. Don't describe it as a share of everything
  cited.
- Crawls, answer fetches and AI-referred visits are different counts. Don't
  add them together.
- A null value, a day without coverage, or `no_data` means not measured.
  Don't report it as zero, and don't fill it in with an estimate.
- When a result has a range or a `directional` flag, give the range or say the
  sample is small.
- Results are improved, mixed, no clear change, declined, still measuring or
  unmeasured. They show what moved after a fix shipped. Don't say the fix
  caused it.
- Keep what DevTune returned separate from your own interpretation.

## Ask before changing anything

- Read tools are safe to call without asking.
- Before creating, updating, archiving or deleting anything (prompts, topics,
  brands, actions, agents, webhooks), say what will change and wait for the
  user to confirm.
- Before any tool that spends DevTune credits (agent runs, Dex, drafts, Agent
  Picks tests, prompt set analysis), say so and get approval first. When a
  tool asks for an approved credit estimate, use only the figure the user
  approved.
- DevTune drafts content. It never publishes it. A draft pull request is
  opened only when the user asks for one.
- Locked pages are off-limits. Don't suggest edits to them.
- The user's explicit instructions take priority over this skill.
