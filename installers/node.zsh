#!/bin/zsh

install_nvm() {
    echo "Installing NVM"

    if [ -d $NVM_DIR ]; then
        echo "Nvm already installed."
    else
        curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
        export NVM_DIR="$HOME/.nvm"
        [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
        [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    fi
}

install_node() {
    install_nvm

    echo "Installing Node"
    which -s node
    if [[ $? != 0 ]] ; then
        nvm install node
    else
        echo "Node already installed."
    fi
}