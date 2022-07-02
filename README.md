# zinit-annex-submods

An annex (i.e., an extension for [Zinit](https://github.com/zdharma-continuum/zinit) –
[more information](https://zdharma-continuum.github.io/zinit/wiki/Annexes/)) that allows Zinit to
clone additional submodules when installing a plugin or snippet. The submodules are then
automatically updated on the `zinit update ...` command.

![screenshot](./images/screenshot.png)

## Installation

```bash
zinit light zdharma-continuum/zinit-annex-submods
```

The snippet above will setup the submods annex and adds the `submods` ice.

## Syntax

```bash
submods'<USER>/<PLUGIN> -> <OUTPUT DIRECTORY>'
```

## Examples

Load `zsh-autosuggestions` plugin and `autosuggestions` Prezto module

`ice` syntax

```bash
zinit ice svn submods'zsh-users/zsh-autosuggestions -> external'
zinit snippet PZTM::autosuggestions
```

`for` syntax

```bash
zi for \
	submods'zsh-users/zsh-autosuggestions -> external' \
	PZTM::autosuggestions
```

Load `zsh-users/zsh-history-substring-search` plugin and `zsh-history-substring-search` Oh-My-Zsh
plugin

```bash
zi for \
	submods"zsh-users/zsh-history-substring-search -> external" \
	svn \
	OMZP::history-substring-search
```

Load the `zsh-users/zsh-completions` plugin and Oh-My-Zsh `completion` lib

```bash
zi for \
	submods"zsh-users/zsh-completions -> external" \
	OMZL::completion.zsh
```
