# git-ck
wrapper for git-checkout which managed uncommited changes

This wrapper will allow you to change branches with uncommitted changes without fear. It will commit staged and unstaged changes as separate commits, which it will restore when you return to that branch.

## Requirements
It requires ruby, just ruby, no extra gems required. And obviously git.
It was developed against ruby 2.2, but I haven't used any fancy features, so it should work against at least 2.1

## Install
Copy git-ck to somewhere in your path. For Linux uses a good option is either /usr/local/bin (for system-wide install) or ~/.local/bin (for user-specific install)

## Shell completions
Bash completions are provided, copy them to somewhere bash will source them. Unfortunately this is very OS specific (even between linux distributions there is no consensus)

Zsh completions are coming, but are not as simple as bash completions.
