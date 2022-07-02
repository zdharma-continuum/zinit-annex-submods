#!/usr/bin/env zsh
# -*- mode: sh; sh-indentation: 2; indent-tabs-mode: nil; sh-basic-offset: 2; -*-
#
# Copyright (c) 2016-2020 Sebastian Gniazdowski and contributors
# Copyright (c) 2021-2022 zdharma-continuum and contributors

# Standarized $0 handling: https://zdharma-continuum.github.io/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html#zero-handling
# handlers use the ":" symbol as the namespacer
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

autoload -Uz \
  za-submods-atclone-handler \
  za-submods-atpull-handler \
  za-submods-atclone-help-handler \
  za-submods-atpull-help-handler

# register a new ice-mod -> submods''
@zinit-register-annex \
  "zinit-annex-submods" \
  hook:atclone-30 \
  za-submods-atclone-handler \
  za-submods-atclone-help-handler \
  "submods''"

@zinit-register-annex \
  "zinit-annex-submods" \
  hook:%atpull-30 \
  za-submods-atpull-handler \
  za-submods-atpull-help-handler
