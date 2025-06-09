# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
  z
  web-search
  copypath
  copyfile
  extract
  history
  colored-man-pages
  command-not-found
  brew
  macos
  
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/andre/.lmstudio/bin"
# End of LM Studio CLI section

. "$HOME/.local/bin/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# =================================
# CONFIGURAÇÕES PERSONALIZADAS
# =================================

# Configurações de Histórico
HISTSIZE=50000
SAVEHIST=50000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

# Aliases de Navegação
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias l='ls -CF'

# Git shortcuts
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'

# Python/ML workflows
alias py='python3'
alias pip='pip3'
alias jup='jupyter notebook'
alias lab='jupyter lab'
alias conda-activate='conda activate'

# Productivity
alias mkdir='mkdir -p'
alias h='history | tail -20'
alias c='clear'
alias reload='source ~/.zshrc'
alias zshconfig='code ~/.zshrc'  # Usando VS Code em vez de nano

# macOS específicos
alias finder='open .'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'

# LM Studio e AI tools
alias lms='lmstudio'
alias chat='lms chat'

# Projeto específicos
alias projects='cd ~/Documents/Projects'
alias valentina='cd /Users/andre/Projeto-Valentina'
alias desktop='cd ~/Desktop'
alias downloads='cd ~/Downloads'

# Funções Úteis
mkcd() {
  mkdir -p "$1" && cd "$1"
}

killport() {
  if [ -z "$1" ]; then
    echo "Uso: killport <numero_da_porta>"
    return 1
  fi
  lsof -ti:$1 | xargs kill -9 2>/dev/null
  echo "Processo na porta $1 finalizado"
}

backup() {
  if [ -z "$1" ]; then
    echo "Uso: backup <arquivo>"
    return 1
  fi
  cp "$1" "$1.backup.$(date +%Y%m%d_%H%M%S)"
  echo "Backup criado: $1.backup.$(date +%Y%m%d_%H%M%S)"
}

# Função melhorada para ativar ambiente virtual Python
venv() {
  local venv_dirs=("venv" ".venv" "env" ".env")
  
  for dir in "${venv_dirs[@]}"; do
    if [ -d "$dir" ]; then
      source "$dir/bin/activate"
      echo "✅ Ambiente virtual ativado: $dir"
      return 0
    fi
  done
  
  echo "❌ Nenhum ambiente virtual encontrado (procurei: ${venv_dirs[*]})"
  echo "💡 Use 'mkvenv' para criar um novo ambiente virtual"
}

# Função para desativar ambiente virtual
dvenv() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    deactivate
    echo "✅ Ambiente virtual desativado"
  else
    echo "❌ Nenhum ambiente virtual ativo"
  fi
}

# Função para criar ambiente virtual
mkvenv() {
  if [ -d "venv" ]; then
    echo "❌ Ambiente virtual já existe"
    return 1
  fi
  python3 -m venv venv
  source venv/bin/activate
  pip install --upgrade pip
  echo "✅ Ambiente virtual criado e ativado"
}

# Função para listar arquivos grandes
bigfiles() {
  find . -type f -exec ls -lh {} \; | awk '{print $5 " " $9}' | sort -hr | head -20
}

# Função para limpar downloads
cleandownloads() {
  find ~/Downloads -type f -atime +30 -delete
  echo "✅ Arquivos antigos removidos de Downloads"
}

# Keybindings melhorados
bindkey '^[^[[C' forward-word      # Alt+Right
bindkey '^[^[[D' backward-word     # Alt+Left
bindkey '^[[1;5C' forward-word     # Ctrl+Right
bindkey '^[[1;5D' backward-word    # Ctrl+Left

# Auto-completar case insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Aliases condicionais (apenas se as ferramentas estiverem instaladas)
if command -v bat &> /dev/null; then
  alias cat='bat'
  alias catn='cat'  # cat original
fi

# Atualizado de exa para eza
if command -v eza &> /dev/null; then
  alias ls='eza --icons'
  alias tree='eza --tree'
  alias ll='eza -l --icons'
  alias la='eza -la --icons'
else
  # Fallback para ls padrão
  alias ll='ls -alF'
  alias la='ls -A'
fi

if command -v rg &> /dev/null; then
  alias grep='rg'
else
  alias grep='grep --color=auto'
fi

# FZF configuration
if command -v  &> /dev/null; then
  export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
  export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
  export FZF_CTRL_T_OPTS='--preview "bat --color=always --style=numbers --line-range=:500 {}"'
  export FZF_ALT_C_OPTS='--preview "tree -C {} | head -200"'
  
  # Inicializar keybindings e completions do FZF
  [ -f ~/..zsh ] && source ~/.fzf.zsh
fi

# Verificar e instalar plugins do Oh My Zsh se necessário
check_omz_plugins() {
  local plugins_to_install=()
  
  if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
    plugins_to_install+=("zsh-autosuggestions")
  fi
  
  if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
    plugins_to_install+=("zsh-syntax-highlighting")
  fi
  
  if [ ${#plugins_to_install[@]} -gt 0 ]; then
    echo "🔧 Instalando plugins Oh My Zsh em falta..."
    for plugin in "${plugins_to_install[@]}"; do
      case $plugin in
        "zsh-autosuggestions")
          git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
          ;;
        "zsh-syntax-highlighting")
          git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
          ;;
      esac
    done
    echo "✅ Plugins instalados. Execute 'reload' para aplicar as mudanças."
  fi
}

# Uncomment para verificar plugins na inicialização:
# check_omz_plugins

# Mostrar status do ambiente virtual no prompt (se ativo)
if [[ -n "$VIRTUAL_ENV" ]]; then
  echo "🐍 Ambiente virtual ativo: $(basename $VIRTUAL_ENV)"
fi