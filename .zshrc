# Set the location of Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Set the Zsh theme
ZSH_THEME="robbyrussell"

export PATH="$PATH:/opt/nvim-linux64/bin"

export SDKMAN_DIR="$HOME/.sdkman"
source "$SDKMAN_DIR/bin/sdkman-init.sh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/thangatamil/.sdkman"
[[ -s "/home/thangatamil/.sdkman/bin/sdkman-init.sh" ]] && source "/home/thangatamil/.sdkman/bin/sdkman-init.sh"


export PATH=$PATH:/usr/local/go/bin
export GRADLE_HOME=/opt/gradle-7.3.3
export PATH=$GRADLE_HOME/bin:$PATH

export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

#export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
#export PATH=$JAVA_HOME/bin:$PATH

#Enable Oh My Zsh plugins
plugins=(git )
#zsh-syntax-highlighting zsh-autosuggestions

# -openjdk-amd64/bin/java
#export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64


# Set the terminal to use 256 colors
export TERM=xterm-256color

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Enable UTF-8 support
export LANG=en_US.UTF-8

# Customize your prompt (optional)
# export PS1="%n@%m %1~ %# "

# Add custom bin directory to PATH
export PATH="$HOME/bin:$PATH"

# Alias definitions
alias ll='ls -la'         # Detailed listing
alias bat='batcat'

alias gs='git status'     # Short for git status
alias gb='git branch'
alias gc='git checkout '
alias gc-='git checkout - '

#alias f='nvim $(fzf --preview="cat {}")'
alias f="fzf --preview 'cat {}' --bind 'enter:execute(nvim {})'"
alias f.="find . -name '.*' | fzf --preview '[[ \$(file --mime {}) =~ binary ]] || cat {}'"
# Enable auto-correction
setopt correct

# Set history options
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Enable command completion
autoload -Uz compinit
compinit

# Enable auto-suggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10' # Change color as desired

# Enable syntax highlighting
#source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

export GRADLE_USER_HOME=/home/thangatamil/.gradle

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DOCKER_HOST=unix:///var/run/docker.sock

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/thangatamil/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/thangatamil/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/thangatamil/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/thangatamil/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
