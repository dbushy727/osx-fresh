#!/bin/zsh

pyenv install 3.10.1
pyenv global 3.10.1

if ! grep -q "export PYENV_ROOT" ~/.zprofile; then 
    echo "export PYENV_ROOT=\"$HOME/.pyenv\"" >> ~/.zprofile
fi

if ! (echo $PATH | grep -q $PYENV_ROOT); then
    echo "export PATH=\"$PYENV_ROOT/bin:$PATH\"" >> ~/.zprofile
fi

if ! grep -q "pyenv init --path" ~/.zprofile; then 
    echo "eval \"$(pyenv init --path)\"" >> ~/.zprofile
fi

if ! grep -q "if command -v pyenv" ~/.zshrc; then 
    echo -e '\nif command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
fi
