#!/usr/bin/env zsh

### References:
# https://github.com/ntnyq/omz-plugin-bun/blob/main/bun.plugin.zsh

# Aliases

alias b='bun'

# Dependencies
alias ba='bun add'
alias bad='bun add --dev'
alias brm='bun remove'
alias bls='bun pm ls'
alias bin='bun install'
alias bu='bun update'
alias biny='bun install --yarn'

# Global dependencies
alias bga='bun add --global'
alias bgls='bun pm ls --global'
alias bgrm='bun remove --global'
alias bgu='bun update --global'

# Run scripts
alias br='bun run'
alias brun='bun run'
alias bd='bun run dev'
alias bb='bun run build'
alias bs='bun run serve'
alias bst='bun run start'
alias bt='bun run test'
alias btc='bun run test --coverage'
alias bln='bun run lint'
alias bdocs='bun run docs'
alias bfmt='bun run format'

# Misc
alias bi='bun init'
alias bc='bun create'

alias bx='bun x'

# Bundle
alias bbd='bun build'
