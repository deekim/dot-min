# dot-min
minified dotfiles

## Install

1. Homebrew
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```sh
brew bundle install
```

2. GitHub

https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

```sh
ssh-keygen -t ed25519 -C "your_email@example.com"
```

```sh
eval "$(ssh-agent -s)"
```

```sh
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

```sh
pbcopy < ~/.ssh/id_ed25519.pub
```
