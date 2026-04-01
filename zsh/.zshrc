# ── Oh My Zsh ────────────────────────────────────────────────
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Lazy-load NVM via oh-my-zsh plugin (saves ~800ms startup time)
zstyle ':omz:plugins:nvm' lazy yes

plugins=(
  git
  node
  npm
  nvm
  sudo
  extract
)

source "$ZSH/oh-my-zsh.sh"

# ── Homebrew ─────────────────────────────────────────────────
eval "$(/opt/homebrew/bin/brew shellenv)"

# ── PATH ─────────────────────────────────────────────────────
path=(
  "$HOME/.local/bin"
  "/opt/homebrew/opt/libpq/bin"
  "/opt/homebrew/opt/mysql-client@8.0/bin"
  "/opt/homebrew/opt/openjdk/bin"
  $path
)

# ── NVM ──────────────────────────────────────────────────────
export NVM_DIR="${XDG_CONFIG_HOME:-$HOME/.nvm}"

# ── Google Cloud SDK ─────────────────────────────────────────
if [[ -f "$HOME/Library/google-cloud-sdk/path.zsh.inc" ]]; then
  source "$HOME/Library/google-cloud-sdk/path.zsh.inc"
fi
if [[ -f "$HOME/Library/google-cloud-sdk/completion.zsh.inc" ]]; then
  source "$HOME/Library/google-cloud-sdk/completion.zsh.inc"
fi

# ── Environment ──────────────────────────────────────────────
export CLAUDE_CODE_EFFORT_LEVEL=high

# ── Aliases ──────────────────────────────────────────────────
alias cc='claude --dangerously-skip-permissions'
