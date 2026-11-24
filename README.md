# agent-home

This repository holds public always-on startup rules for coding agent sessions in Claude Code and Codex.

## Load `startup.md`

Clone this repository locally, then point each tool at `<clone>/startup.md`.

In Claude Code, add an `@` import to your global `CLAUDE.md`:

```markdown
@<clone>/startup.md
```

In Codex, add a pointer line to your global `AGENTS.md`:

```markdown
Read and follow `<clone>/startup.md` at the start of every session.
```

## Trust boundary

This repository is public. Keep every change free of these items:

- personal facts or circumstances
- home directory paths or local state paths
- private repository names
- employer or client names
- email addresses or private account handles

The scan requires `PRIVATE_SCAN_PATTERN` and exits non-zero when the variable is unset or empty. Keep the pattern outside this repository as a CI secret, or set it in your shell from a private copy. Before you push, run `./scripts/private-scan.sh` to check all tracked files.
