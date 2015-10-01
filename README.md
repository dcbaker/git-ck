# git-ck
wrapper for git-checkout which managed uncommited changes

This wrapper will allow you to change branches with uncommitted changes without fear. It will commit staged and unstaged changes as separate commits, which it will restore when you return to that branch.

## Requirements
It requires ruby, just ruby, no extra gems required. And obviously git.
It was developed against ruby 2.2, but I haven't used any fancy features, so it should work against at least 2.1

## Install
Copy git-ck to somewhere in your path. For Linux uses a good option is either /usr/local/bin (for system-wide install) or ~/.local/bin (for user-specific install)

## Shell completions
### Bash
Copy bash/\_git_ck them to somewhere bash will source them. Unfortunately this is very OS specific (even between linux distributions there is no consensus)

### Zsh
copy the zsh/\_git-ck file to somewhere in your fpath. For example: ~/.local/share/zsh-completions/.

Then ensure that location is at the head of fpath, add the following to your .zshrc (or somewhere that will be sourced by zshrc)

```zsh
fpath=(~/.local/share/zsh-completions/ $fpath)
```

## git hook
This repo provides a git hook to prevent git-ck commits from being pushed. Put git/pre-push.rb in <repo>/.git/hooks as "pre-push", and they will abort pushing if their conditions are met. Make sure the script is executable and doesn't have a file extension!

For global install consider doing something like this:
```sh
mkdir -p ~/.local/share/git/hooks
git config --global init.templatedir '~/.local/share/git'
cp <hook> `/.git/hooks/pre-push
```
This will means all new repositories will use the new git hook. You can call ```git init``` again on a repo to use the new hooks.
