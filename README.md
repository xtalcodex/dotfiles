# dotfiles
My dotfiles

## Setup

``` shell
$ git clone git@github.com:xtalcodex/dotfiles.git

$ ln -s ~/dotfiles/.tmux.conf
$ ln -s ~/dotfiles/.zprofile
$ ln -s ~/dotfiles/.zshenv
$ ln -s ~/dotfiles/.zshrc
$ ln -s ~/dotfiles/Brewfile

$ cd ~/.emacs.d
$ ln -s ~/dotfiles/init.el
$ ln -s ~/dotfiles/snippets

$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
$ brew bundle --no-lock
```

## Git

``` shell
$ git config --global user.name {name}
$ git config --global user.email {email}
$ git config --global user.signingkey {key}
$ git config --global commit.gpgsign true
$ git config --global core.pager 'less -F'
$ git config --global gpg.program gpg
$ git config --global init.defaultBranch main
```

## GPG

``` shell
$ echo "pinentry-program `which pinentry-mac`" >> ~/.gnupg/gpg-agent.conf
$ gpgconf --reload gpg-agent
```

## ClamAV

``` shell
$ emacs /otp/homevrew/etc/clamav/freshclam.conf
$ emacs /otp/homevrew/etc/clamav/clamd.conf
$ freshclam
```

## Ruby

``` shell
$ rbenv install {version}
$ rbenv global {version}
$ gem update --system
$ gem install benchmark-ips debug numo-narray rubocop rubocop-performance rubocop-rails solargraph
$ bundle config set path 'vendor/bundle'
```

## AtCoder

``` shell
$ cd
$ pip3 install online-judge-tools
$ oj login https://atcoder.jp/
$ npm install -g atcoder-cli
$ acc login
$ acc config default-test-dirname-format test
```
