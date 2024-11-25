setopt prompt_subst

# Documentation for ZSH shell: https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html
# Available variables - https://gist.github.com/vergenzt/33a45a9a9218b38bd4bf
# Using variables cheat sheet - https://gist.github.com/aamnah/b50b081a752f6e193f9202c2c445b740
# $(git_prompt_info) # Outputs current branch info in prompt format
# $(parse_git_dirty) # Checks if working tree is dirty
# $(git_remote_status) # Gets the difference between the local and remote branches
# $(git_current_branch) # Outputs the name of the current branch
# $(git_commits_ahead) # Gets the number of commits ahead from remote
# $(git_commits_behind) # Gets the number of commits behind remote
# $(git_prompt_ahead) # Outputs if current branch is ahead of remote
# $(git_prompt_behind) # Outputs if current branch is behind remote
# $(git_prompt_remote) # Outputs if current branch exists on remote or not
# $(git_prompt_short_sha) # Formats prompt string for current git commit short SHA
# $(git_prompt_long_sha) # Formats prompt string for current git commit long SHA
# $(git_prompt_status) # Get the status of the working tree
# $(git_current_user_name) # Outputs the name of the current user
# $(git_current_user_email) # Outputs the email of the current user
# $(git_repo_name) # Output the name of the root directory of the git repository

export LSCOLORS=ExGxFxDxCxHxHxCbCeEbEb

GIT_COLOR=$'%F{39}'

ZSH_THEME_GIT_PROMPT_PREFIX=" on ${GIT_COLOR}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}+"
ZSH_THEME_GIT_PROMPT_BRANCH=""
ZSH_THEME_GIT_PROMPT_SEPARATOR=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]?%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[cyan]%}%{+%G%}"

# This is the basic prompt that is always printed.  It will be
# enclosed to make it newline.
_YASHAS_PROMPT='%{$reset_color%}%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg[green]%}%~%{$reset_color%}%'


function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

# This is the base prompt that is rendered sync.  It should be
# fast to render as a result.  The extra whitespace before the
# newline is necessary to avoid some rendering bugs.
PROMPT=$'\n'$_YASHAS_PROMPT$' \n$ '
RPROMPT='${GIT_COLOR}$(git_prompt_info)%{$reset_color%}%'


