#!/bin/zsh
install_homebrew() {

    echo "Installing Homebrew..."
    which -s brew &> /dev/null
    if [[ $? != 0 ]] ; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/dbush/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
    else
        echo "Homebrew already installed. Updating instead..."
        brew update
    fi
}