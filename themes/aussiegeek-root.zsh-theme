
BATPREF='/sys/class/power_supply/BAT0'
PROMPT='
$fg_bold[blue]┌[$fg[red]%t $fg_bold[blue]] $fg_bold[blue] [ $fg[red]%n@%m:%~$(git_prompt_info)$fg[yellow]$(rvm_prompt_info)$fg_bold[blue] $[ $(cat $BATPREF/charge_now) * 100 / $(cat $BATPREF/charge_full) ]%% ]$reset_color
$fg_bold[blue]└>#$reset_color  '

RPROMPT='$(date)'
#RPS1='%~'
# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="$fg_bold[green] ("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
