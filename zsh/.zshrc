# command history
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt APPEND_HISTORY         # Append history to the file, rather than overwriting it
setopt INC_APPEND_HISTORY     # Write commands to the history file immediately
setopt SHARE_HISTORY          # Share history across all sessions in real-time
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate commands first when trimming history
setopt HIST_IGNORE_ALL_DUPS   # Remove duplicate entries when writing history
setopt HIST_IGNORE_SPACE      # Ignore commands that start with a space
setopt HIST_VERIFY            # Don't execute history substitutions immediately

# init starship
eval "$(starship init zsh)"
