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
- Preserve unrelated user and agent changes.
- Keep secrets, tokens, credentials, and private values out of source and output.
- Test meaningful changes. State any proof gap instead of implying success.
- Evidence state: keep planned, implemented, tested, qualified, committed, pushed, merged, installed, activated, submitted, and released distinct. Report only the state current evidence proves.
- Mutable state: treat handoffs, packets, cached output, and prior observations as context, not authority. Refresh live state before acting or reporting.
- Unknown external outcome: inspect the exact target; retry only after live state proves the first attempt had no effect.

## Ownership

- Follow the closest repository or directory instructions for the files being changed.
- Keep startup instructions to cross-project rules and sharp routes. Skills own workflows; code, CLI help, generated docs, and checks own deterministic contracts.
- Read the smallest sufficient owner. Point to it instead of copying its contract.
- Generated file: edit its named source, then regenerate the output.

## Worktrees and branches

- Code repository edit: use an isolated worktree and commit only to a branch.
- Worktree location: when you create one yourself (`git worktree add`, `herdr worktree create --path`, a VS Code prompt), use `<repo>/.worktrees/<name>`. A harness's own worktree feature keeps its documented default folder.
- New Bun or TypeScript repository: after choosing its owner, use the README of `nathanvale/bun-typescript-template` for bootstrap.
- Never force-push, hard-reset, run `git clean -f`, restore the entire working tree, force-switch branches, or stage with `git add .` or `git add -A`. When Claude Code's `git-safety` hook is installed, it refuses these and prints the safer command.
- Dirty or untracked work: treat it as owned until proven disposable. Preserve it before removing a worktree or branch.
- Pull request body: write or revise it with the `pr` skill.
- Make clones and copies only in a `mktemp -d` folder under the system temp folder (or a tool's own default worktree folder), and delete what you made when the job ends.

## Agent-native work

- Give capable agents maps, invariants, owner paths, inspectable state, and the next safe action.
- New tool or capability: search current dependencies and existing products for an owner before design. Record why reuse does not fit before custom implementation.
- Module, interface, or seam design: use `codebase-design` before implementation.
- Before the first edit, reconcile the request, accepted decisions, current diff, and named spec or handoff. State required outcomes, exclusions, and the stop boundary.
- Contradiction: outside a declared intentional RED step, stop when instructions, tests, and executable source disagree. Identify the authoritative owner and reconcile the mismatch before editing.
- Treat accepted decisions as settled. Reopen one only for direct contradiction or new high-consequence evidence.
- Keep delegated work inside its named unit. Stop at its review, commit, or handoff boundary; start the next unit only with authority.
- Preserve every explicit requirement. Report missing proof as incomplete; never defer, narrow, or replace it because another path is easier or green.
- Use existing contract and discovery owners. Keep throwaway probes outside repositories; never invent placeholder commands, states, or interfaces to make a test pass.
- Every failure names its cause and its repair path, or the handoff replacing it.
