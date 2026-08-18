# homebrew-mcpaste

Homebrew tap for [MCPaste](https://github.com/1yoouoo/mcpaste), the clipboard
bridge between macOS and remote AI coding agents.

## Install

```sh
brew tap 1yoouoo/mcpaste
brew install mcpaste
```

Or in one command:

```sh
brew install 1yoouoo/mcpaste/mcpaste
```

Then pair the machine:

```sh
mcpaste setup --name <machine-name>
```

The macOS menu bar app is not distributed through Homebrew (Homebrew
quarantines cask downloads, which blocks the ad-hoc-signed app). Install it
from the terminal instead:

```sh
curl -fsSL https://raw.githubusercontent.com/1yoouoo/mcpaste/main/install.sh | sh -s -- --app
```
