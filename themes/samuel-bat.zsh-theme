
BATPREF='/sys/class/power_supply/BAT0'
USERCOL=$fg[green]
USERCHAR='>:'
PR_HBAR=${altchar[q]:--}
PR_SHIFT_IN="%{$terminfo[smacs]%}"
PR_SHIFT_OUT="%{$terminfo[rmacs]%}"
BATFILE="energy"
if [ -e $BATPREF/charge_now ]; then
  BATFILE="charge"
fi

if [ "$(id -u)" = "0" ]; then
  USERCOL=$fg[red]
  USERCHAR='>#'
fi
PROMPT='
$fg_bold[blue]┌[$fg[red]%t$fg_bold[blue]] $fg_bold[blue] [$USERCOL%n@%m:%~$(git_prompt_info)$fg[yellow]$(rvm_prompt_info)$fg_bold[blue] $[ $(cat $BATPREF/${BATFILE}_now) * 100 / $(cat $BATPREF/${BATFILE}_full) ]%%]
└$USERCHAR%{$reset_color%} '

RPROMPT='$(date)'
#RPS1='%~'
# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="$fg_bold[green] ("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
