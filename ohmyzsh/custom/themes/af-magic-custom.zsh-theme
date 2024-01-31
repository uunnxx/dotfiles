function virtualenv_info { 
    [ $VIRTUAL_ENV ] && echo '['`basename $VIRTUAL_ENV`']'
}


# PS1="${FG[105]}%3~\$(git_prompt_info)\$(hg_prompt_info) ${FG[105]}%(!.#.»)%{$reset_color%} "
PS1="${FG[150]%}\$(virtualenv_info)%{$reset_color%} "
PS1+="${FG[105]%}\$(shrink_path -l -g -t -3)\$(git_prompt_info)\$(hg_prompt_info) ${FG[105]}%(!.#.»)%{$reset_color%}"
PS2="%{$fg[red]%}\ %{$reset_color%}"

RPS1="%(?..%{$fg[red]%}%? ↵%{$reset_color%}) "
# virtualenv
RPS1+="${FG[237]%}[%n@%m%\]%{$reset_color%}"

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX=" ${FG[075]}[${FG[078]}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="${FG[214]}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${FG[075]}]%{$reset_color%}"

# hg settings
ZSH_THEME_HG_PROMPT_PREFIX=" ${FG[078]}[${FG[078]}"
ZSH_THEME_HG_PROMPT_CLEAN=""
ZSH_THEME_HG_PROMPT_DIRTY="${FG[214]}*%{$reset_color%}"
ZSH_THEME_HG_PROMPT_SUFFIX="${FG[078]}]%{$reset_color%}"
