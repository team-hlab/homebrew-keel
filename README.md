# homebrew-keel

Homebrew tap for [**keel**](https://github.com/team-hlab/keel) — a lean, single-binary
hook harness for AI coding agents (**Claude Code** · **Codex** · **Antigravity**). Every
tool call passes through keel, which auto-permits the safe, auto-denies the catastrophic,
and asks you about the ambiguous.

## Install

```sh
brew install team-hlab/keel/keel
keel init            # attach keel to your installed agents
```

…or equivalently:

```sh
brew tap team-hlab/keel
brew install keel
```

Update later with `brew upgrade keel`.

## ⚠️ `Formula/keel.rb` is auto-generated — do not edit by hand

It is rendered and pushed automatically by keel's
[release workflow](https://github.com/team-hlab/keel/blob/develop/.github/workflows/release.yml)
on every release (via a short-lived, scoped GitHub App token), so hand edits are
overwritten on the next release.

To change the formula, edit the renderer
[`packaging/homebrew/render_formula.py`](https://github.com/team-hlab/keel/blob/develop/packaging/homebrew/render_formula.py)
in the main repo and cut a release — see
[docs/RELEASING.md](https://github.com/team-hlab/keel/blob/develop/docs/RELEASING.md).
