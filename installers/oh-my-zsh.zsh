#!/bin/zsh

install_oh_my_zsh() {
    # Install Oh-My-Zsh
    echo "Installing Oh-My-Zsh..."
    if [ -d ~/.oh-my-zsh ]; then
        echo "Oh-My-Zsh is already installed"
    else
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    fi
}