# Display if I'm in a git or mercurial repo or not
function repo_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '%%'
}

PROMPT='
%{$fg[blue]%}%n%{$reset_color%} at %{$fg[green]%}%m%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%} $(git_prompt_info)
$(repo_char) '

ZSH_THEME_GIT_PROMPT_PREFIX="git:%{$fg[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# Display the date to the right
#RPROMPT='$(date "+%x %T %Z")'

# Prompt to try out realiaser
#function last_command() {
#  echo `history -1 | cut -d ' ' -f 3- | realiaser`
#}

#RPROMPT='%{$fg[blue]%}%p $(last_command)%{$reset_color%} $(date "+%x %T %Z")'

RPROMPT='%{$fg[blue]%}%p %{$reset_color%} $(date "+%x %T %Z")'
