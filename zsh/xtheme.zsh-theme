CURRENT_BG='NONE'

# Current time
prompt_time() {
  echo -n "%{$fg[black]%}"
  echo -n `date +%H:%M`
}

# Current directory
prompt_dir() {
  echo -n "%{$fg[cyan]%}"
	echo -n " %~/"
}

# End of prompt
prompt_end() {
  echo -n "%{$fg[blue]%}"
  echo -n '×'
}

# Main prompt
build_prompt() {
	RETVAL=$?
  prompt_time
	prompt_dir
  echo -n '\n'
  prompt_end
}

PROMPT='%{%f%b%k%}$(build_prompt) '
