# Install custom programs
apt install curl git bat most pygmentize fzf zsh 


# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add to PATH

test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.zshrc

# fzf tab completion 
git clone https://github.com/lincheney/fzf-tab-completion

# paste to .zshrc
source /path/to/fzf-tab-completion/zsh/fzf-zsh-completion.sh
bindkey '^I' fzf_completion

# Graphical stuff

zstyle ':completion::*:ls::*' fzf-completion-opts --preview='eval head {1}'


