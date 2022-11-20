#!/usr/bin/env zsh
#
# Copyright (c) 2016-2021 Sebastian Gniazdowski and contributors
# Copyright (c) 2021-2022 zdharma-continuum and contributors

# Standarized $0 handling, see:
# https://zdharma-continuum.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html#zero-handling
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

autoload +Xz -U \
  :za-submods::atclone-handler \
  :za-submods::atclone-help-handler \
  :za-submods::atpull-handler \
  :za-submods::atpull-help-handler

@zinit-register-annex "zinit-annex-submods" \
  hook:atclone-30 \
  :za-submods::atclone-handler \
  :za-submods::atclone-help-handler \
  "submods''"

@zinit-register-annex "zinit-annex-submods" \
  hook:%atpull-30 \
  :za-submods::atpull-handler \
  :za-submods::atpull-help-handler

# vim: set expandtab filetype=zsh shiftwidth=2 softtabstop=2 tabstop=2:
