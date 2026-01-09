# ============================================================================
# Environment Configuration
# ============================================================================

# Terminal and Locale Settings
export TERM="xterm-256color"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Editor Configuration
export VISUAL="nvim"
export EDITOR="$VISUAL"

# Pager Configuration
export PAGER="less"
export LESS="-RFX --mouse"

# History Configuration
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=50000
export SAVEHIST=50000

# ============================================================================
# Tool-Specific Environment Variables
# ============================================================================

# FZF Configuration
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_DEFAULT_OPTS="--height 60% --layout=reverse --border --bind=tab:accept --preview-window=right:50%"

# ZSH Autosuggestions
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
export ZSH_AUTOSUGGEST_USE_ASYNC=1
export ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# Development Environment
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-21.jdk/Contents/Home"

# ============================================================================
# PATH Configuration
# ============================================================================

# Function to safely add to PATH (prevents duplicates)
add_to_path() {
    local dir="$1"
    [[ -d "$dir" ]] && [[ ":$PATH:" != *":$dir:"* ]] && export PATH="$dir:$PATH"
}

# Add directories to PATH (order matters - earlier = higher priority)
add_to_path "/opt/homebrew/opt/mysql-client/bin"
add_to_path "${KREW_ROOT:-$HOME/.krew}/bin"
add_to_path "/Applications/IntelliJ IDEA.app/Contents/MacOS"
add_to_path "$HOME/.local/bin"
add_to_path "$HOME/bin"

# Clean up the function
unset -f add_to_path

# ============================================================================
# Package Manager Initialization
# ============================================================================

# Homebrew
if [[ -x "/opt/homebrew/bin/brew" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Fast Node Manager (FNM) - alternative to NVM
if command -v fnm &> /dev/null; then
    eval "$(fnm env --use-on-cd)"
fi

# ============================================================================
# API Keys and Sensitive Data
# ============================================================================

# Load API keys from a separate secrets file managed by 1Password
# Use dspull ~/.config/zsh/secrets.zsh to sync from 1Password vault
if [[ -r "$HOME/.config/zsh/secrets.zsh" ]]; then
    source "$HOME/.config/zsh/secrets.zsh"
else
    echo "Warning: secrets.zsh not found."
fi
