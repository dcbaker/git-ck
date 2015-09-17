# git-ck
wrapper for git-checkout which managed uncommited changes

This wrapper will allow you to change branches with uncommitted changes without fear. It will commit staged and unstaged changes as separate commits, which it will restore when you return to that branch.

## Requirements
It requires ruby, just ruby, no extra gems required. And obviously git.
It was developed against ruby 2.2, but I haven't used any fancy features, so it should work against at least 2.1

## How to use?
Just dump git-ck in your path somewhere, now running git ck will use the fancy script and you'll be freed of one more daily annoyance.
