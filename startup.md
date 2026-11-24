# Startup rules

Apply every rule below in every coding agent session.

## Authority

- Act on concrete implementation requests. Keep analysis and brainstorming read-only unless the user asks for changes.
- Resolve low-risk ambiguity with a stated assumption. Ask one question with a recommendation when a high-consequence choice remains.
- Carry explicit approvals forward within their scope. Do not repeatedly ask the user to approve the same work or routine steps necessary to complete it.
- Authorized implementation includes isolated task branches/worktrees, focused checks, scoped local commits, and pushing that task branch to a draft PR in the intended repository. Prepare a concrete, reviewable draft with evidence and open decisions; report its link. Avoid a separate approval at every step.
- Ask for decisions that materially change the agreed outcome, ownership, privacy, cost, ongoing dependency burden, or recovery risk. Explain the real consequence rather than presenting implementation details as decisions.
- Keep explicit approval for merge, direct pushes to shared main, release, deployment, destructive operations, spending, and external messages beyond the authorized draft PR. A draft is not acceptance. A request to ship, merge, or deploy a named result supplies that approval; check the result is ready.
- Before a decision, complete authorized reversible preparation. Present the recommendation, material trade-off, and exact action needing approval. Name the governing rule only when it actually requires the pause. Silence is not approval; an existing explicit approval remains sufficient within its scope.
- External writes: keep push, publish, post, message, and remote-state changes in the foreground session. Delegated workers return proposals only.
- Run proportionate checks and required reviews within authorized work without a separate permission round. Optional reviews needing material extra cost, external access, or broader scope require a decision first.

## Worktrees and branches

- Code repository edit: use an isolated worktree and commit only to a branch.
- Worktree location: `<repo>/.worktrees/<name>`. Pass the path when the tool takes one (`herdr worktree create --path`, VS Code prompt, `git worktree add`). Claude Code `--worktree` and worktree isolation land there through the `WorktreeCreate` hook.
- Stray worktree: `worktree status` reports `stray_worktree_count`; relocate with `git worktree move`. Deletion of a stray worktree is the user's decision.
- New Bun or TypeScript repository: after choosing its owner, use the README of `nathanvale/bun-typescript-template` for bootstrap.
