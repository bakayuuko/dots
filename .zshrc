[[ $TMUX = "" ]] && export TERM="rxvt-unicode-256color"

if ! type antibody 1> /dev/null 2>&1; then
  curl -sL git.io/antibody | sh -s
fi

source <(antibody init)
ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
antibody bundle robbyrussell/oh-my-zsh
antibody bundle zdharma/fast-syntax-highlighting
antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zsh-users/zsh-history-substring-search
antibody bundle zsh-users/zsh-completions

#antibody bundle paulmelnikow/zsh-startup-timer

# Plugins
antibody bundle "
  robbyrussell/oh-my-zsh path:plugins/extract
  robbyrussell/oh-my-zsh path:plugins/golang
  robbyrussell/oh-my-zsh path:plugins/tmux
  robbyrussell/oh-my-zsh path:plugins/command-not-found
  robbyrussell/oh-my-zsh path:plugins/virtualenvwrapper
"

# Enable autocompletions
autoload -Uz compinit
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi
zmodload -i zsh/complist

# Save history so we get auto suggestions
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

# Options
setopt auto_cd # cd by typing directory name if it's not a command
setopt auto_list # automatically list choices on ambiguous completion
setopt auto_menu # automatically use menu completion
setopt always_to_end # move cursor to end if word had one match
setopt hist_ignore_all_dups # remove older duplicate entries from history
setopt hist_reduce_blanks # remove superfluous blanks from history items
setopt hist_ignore_space # remove items that start with a space from history items
setopt inc_append_history # save history entries as soon as they are entered
setopt share_history # share history between different instances
setopt interactive_comments # allow comments in interactive shells

# Improve autocompletion style
zstyle ':completion:*' menu select # select completions with arrow keys
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion

# Prompt
antibody bundle mafredri/zsh-async
#antibody bundle sindresorhus/pure
# Theme
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_PROMPT_ADD_NEWLINE=true
#SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SYMBOL="do:"
SPACESHIP_CHAR_SUFFIX=" "
antibody bundle denysdovhan/spaceship-prompt

# Keybindings
bindkey -e # readline style bindings ^n/^p etc
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^p' history-substring-search-up
bindkey '^n' history-substring-search-down
bindkey '^[[3~' delete-char
bindkey '^[3;5~' delete-char
bindkey '\^U' backward-kill-line

# Environment
export BROWSER="vivaldi-snapshot"
export LANG=en_US.UTF-8
export EDITOR='micro'
export GIT_EDITOR='micro'

export GIT_DUET_GLOBAL=1
export GIT_DUET_ROTATE_AUTHOR=1
export GIT_DUET_CO_AUTHORED_BY=1

## virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv
#source /usr/local/bin/virtualenvwrapper.sh

## extra setting
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh
PATH="$PATH:$HOME/.bin/:$HOME/.yarn/bin"

## fix micro keybinding
#export TERM=xterm-256color

# Aliases
alias pkgd="yay -c"
alias ins="sudo pacman -Sy"
alias aur="yay -S"
alias hm="cd ~"
alias cd.="cd .."
alias cd..="cd ../.."
alias cd...="cd ../../.."
alias mk="mkdir"
alias vi="micro"
alias vim="micro"
alias nano="micro"
alias mus="ncmpcpp"
alias mirror="xrandr --output VGA1 --same-as LVDS1"
alias mpv="mpv --geometry=50%:50% --autofit=70%x70%"
alias py="python"

function mkcd() 
{
   mkdir -p "$1"; cd "$1"
}