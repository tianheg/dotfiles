#! /usr/bin/env zsh

if [[ -z "$_ZL_NO_ALIASES" ]]; then
  alias zz='z -i'
  alias zc='z -c'
  alias zf='z -I'
  alias zb='z -b'
  alias zbi='z -b -i'
  alias zbf='z -b -I'
  alias zh='z -I -t .'
  alias zzc='zz -c'
fi
