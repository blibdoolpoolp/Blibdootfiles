# Install custom programs
apt install curl git bat most python3-pip fzf zsh -y
pip install pygments
# Install omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add to PATH

test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.zshrc

# fzf tab completion 
git clone https://github.com/lincheney/fzf-tab-completion ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab-completion
git clone --depth 1 https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git   ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/z-shell/zsh-eza ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-eza
# paste to .zshrc
# echo "source /path/to/fzf-tab-completion/zsh/fzf-zsh-completion.sh" >> ~/.zshrc
cp ./.zshrc ~/.zshrc
# bindkey '^I' fzf_completion

# Graphical stuff

# zstyle ':completion::*:ls::*' fzf-completion-opts --preview='eval head {1}'


