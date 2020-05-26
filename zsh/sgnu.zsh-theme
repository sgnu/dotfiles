time_prompt() {
  echo -n "%{$bg[cyan]%} "
  echo -n `date +'%a %H:%M'`
  echo -n " "
}

pwd_prompt() {
  echo -n "%{$bg[magenta]%} "
  echo -n "%~"
  echo -n " "
}

PROMPT='%{$fg[black]%}$(time_prompt)$(git_prompt_info)$(pwd_prompt)%{$reset_color%} '
# RPROMPT='$(time_prompt)'

ZSH_THEME_GIT_PROMPT_CLEAN=" o"
ZSH_THEME_GIT_PROMPT_DIRTY=" x"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$bg[blue]%} ["
ZSH_THEME_GIT_PROMPT_SUFFIX="] "
