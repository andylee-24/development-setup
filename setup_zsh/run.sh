#!/bin/bash
echo "set-option -g default-shell /bin/zsh" >> ~/.tmux.conf
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Ignore update message (should be placed before calling source $ZSH/oh-my-zsh.sh)
echo "export DISABLE_UPDATE_PROMPT=true" | cat - ~/.zshrc > temptemptemp && mv temptemptemp ~/.zshrc
echo "export DISABLE_AUTO_UPDATE=true" | cat - ~/.zshrc > temptemptemp && mv temptemptemp ~/.zshrc

# oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i 's/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/' ~/.zshrc
