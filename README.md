# OSX Fresh
Command line utility to setup a fresh OSX machine.

## Getting started
### Install from source

```
$ git clone https://github.com/dbushy727/osx-fresh
$ cd osx-fresh
$ bin/fresh
```

## What does it do?
OSX Fresh installs all the things you need to start coding. It sets up CLI tools like Homebrew and Oh-My-Zsh as well as Applications like Google Chrome and Slack.

### List of things 
OSX Fresh will setup and install the following:
- [Homebrew](https://brew.sh/)
- [Oh-My-Zsh](https://ohmyz.sh/)
- [Git](https://git-scm.com/)
- [Node](https://nodejs.org/en/)
- [Node Version Manager (NVM)](https://github.com/nvm-sh/nvm)
- [Yarn](https://yarnpkg.com/)
- [Docker](https://www.docker.com/)
- [Google Chrome](https://www.google.com/chrome/downloads/)
- [Slack](https://slack.com/)
- [Spotify](https://www.spotify.com/us/)
- [Visual Studio Code](https://code.visualstudio.com/)
- [Rectangle](https://rectangleapp.com/)
- [Tableplus](https://tableplus.com/)

## How it works
OSX Fresh relies on Homebrew as much as possible to install all the things you need. On top of installation, it will run some zshell scripts to setup and configure must haves like SSH keys, git defaults, etc that you will most likely need to setup anyway.
