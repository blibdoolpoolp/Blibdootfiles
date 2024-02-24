# paste to .zshrc
# echo "source /path/to/fzf-tab-completion/zsh/fzf-zsh-completion.sh" >> ~/.zshrc
cp ./static.zshrc ~/.zshrc
# bindkey '^I' fzf_completion

# Graphical stuff

# zstyle ':completion::*:ls::*' fzf-completion-opts --preview='eval head {1}'