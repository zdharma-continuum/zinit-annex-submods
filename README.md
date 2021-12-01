# zinit-annex-submods

## Introduction

An annex (i.e., an extension for
[Zinit](https://github.com/zdharma-continuum/zinit) –
[more information](https://zdharma-continuum.github.io/zinit/wiki/Annexes/))
that allows Zinit to clone additional submodules when installing a plugin or
snippet. The submodules are then automatically updated on the `zinit update ...`
command.

This annex adds the `submods''` ice to Zinit which has the following syntax:

```zsh
submods'{user}/{plugin} -> {output directory}; ...'
```

![screenshot](./images/screenshot.png)

## Installation

Load as a plugin that installs the annex within Zinit:

```zsh
zinit light zinit-zsh/zinit-annex-submods
```

After this, you can use the `submods` ice.

## Usage

### Example of the `submods` ice

```zsh
# Load the `zsh-autosuggestions' plugin via `autosuggestions' Prezto module
zinit ice svn submods'zsh-users/zsh-autosuggestions -> external'
zinit snippet PZTM::autosuggestions
```

### Example of the `submods` ice and `for` syntax

```zsh
# Load the `zsh-autosuggestions' plugin via `autosuggestions' Prezto module
zi submods'zsh-users/zsh-autosuggestions -> external' for PZTM::autosuggestions

# Load the`zsh-history-substring-search' plugin via Oh-My-Zsh `history-substring-search' plugin
zi submods"zsh-users/zsh-history-substring-search -> external" svn for OMZP::history-substring-search

# Load the`zsh-completions' plugin via Oh-My-Zsh `completion' lib
zi submods"zsh-users/zsh-completions -> external" for OMZL::completion.zsh
```

<!-- vim:set tw=85: -->
