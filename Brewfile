# set arguments for all 'brew install --cask' commands
cask_args appdir: "~/Applications", require_sha: true

# 'brew install'
brew "duti"
brew "pre-commit"
brew "git-lfs"
brew "direnv"
brew "docker"
brew "colima"
brew "diff-so-fancy"
brew "git"
brew "the_silver_searcher"
brew "pyenv"
brew "pyenv-virtualenv"
brew "jq"

brew "mysql@8.4", restart_service: :changed, link: true, conflicts_with: ["mysql"]
brew "postgresql@16",
     postinstall: "${HOMEBREW_PREFIX}/opt/postgresql@16/bin/postgres -D ${HOMEBREW_PREFIX}/var/postgresql@16"

# install only on specified OS
brew "gnupg" if OS.mac?
brew "glibc" if OS.linux?

# 'brew install --cask'
cask "raindropio"
cask "warp"
cask "slack"
cask "raycast"
cask "visual-studio-code"
cask "sublime-text"
cask "sublime-merge"
cask "karabiner-elements"
cask "ticktick"
cask "insomnia"
cask "obsidian"
cask "deckset"
cask "quitter"
cask "discord"
cask "pycharm-ce"

# always upgrade auto-updated or unversioned cask to latest version even if already installed
cask "google-chrome", greedy: true

# 'brew install --cask' only if '/usr/libexec/java_home --failfast' fails
cask "java" unless system "/usr/libexec/java_home", "--failfast"


# 'whalebrew install'
whalebrew "whalebrew/wget"

# 'vscode --install-extension'
vscode "GitHub.codespaces"
