#!/bin/zsh

credentials() {
    vared -p 'Please enter your git name: ' -c GIT_NAME
    echo "Git Username: $GIT_NAME"
    vared -p 'Please enter your git email: ' -c GIT_EMAIL
    echo "Git Email: $GIT_EMAIL"

    git config --global user.name $GIT_NAME
    git config --global user.email $GIT_EMAIL
    echo "Git credentials configured for: $GIT_NAME<$GIT_EMAIL>"
}

config_defaults() {
    GIT_EDITOR=vim
    GIT_DEFAULT_BRANCH=main

    vared -p 'Please select your editor of choice (vim, emacs, etc.): ' -c GIT_EDITOR
    git config --global core.editor $GIT_EDITOR # set vim as default editor
    vared -p 'Please select the default branch name for new repositories (main, master, etc.): ' -c GIT_DEFAULT_BRANCH
    git config --global init.defaultBranch $GIT_DEFAULT_BRANCH # set main as default branch
    echo "Git defaults configured!"
}

ssh_key() {
    if [[ -f $HOME/.ssh/id_rsa ]]; then
        echo "SSH key (id_rsa) already exists."
    else
        echo "creating a new id_rsa ssh key."
        ssh-keygen -t rsa
    fi
    echo "Please make sure your id_rsa is added to github: https://github.com/settings/keys"
}

install_git() {
    echo "Setting up git."
    credentials
    defaults
    config
    ssh_key
}