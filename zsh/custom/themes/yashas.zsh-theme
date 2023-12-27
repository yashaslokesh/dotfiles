setopt prompt_subst

export LSCOLORS=ExGxFxDxCxHxHxCbCeEbEb

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[blue]%}git%{$reset_color%}:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}+"
ZSH_THEME_GIT_PROMPT_BRANCH=""
ZSH_THEME_GIT_PROMPT_SEPARATOR=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]?%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[cyan]%}%{+%G%}"

# This is the basic prompt that is always printed.  It will be
# enclosed to make it newline.
_YASHAS_PROMPT='%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg[green]%}%~%{$reset_color%}%'

# This is the base prompt that is rendered sync.  It should be
# fast to render as a result.  The extra whitespace before the
# newline is necessary to avoid some rendering bugs.
PROMPT=$'\n'$_YASHAS_PROMPT$' \n$ '
RPROMPT=''


