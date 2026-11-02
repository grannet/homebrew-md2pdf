# Homebrew Tap for md2pdf

Homebrew formulae and casks for [md2pdf](https://github.com/grannet/md2pdf) - a Markdown to single-page PDF converter with Japanese font support.

## Installation

### Add the tap

```bash
brew tap grannet/md2pdf
```

### Install CLI

```bash
brew install grannet-md2pdf
```

### Install Quick Action (optional)

Installs a Finder Quick Action that lets you convert Markdown files to PDF by right-clicking.

```bash
brew install --cask grannet-md2pdf-quick-action
```

## Usage

### CLI

```bash
# Basic usage
md2pdf document.md

# Specify output file
md2pdf document.md -o output.pdf

# Options
md2pdf document.md --paper A4 --margin dense
```

### Quick Action

1. Right-click a Markdown file in Finder
2. Select "Quick Actions" > "md2pdf"
3. A PDF file will be created in the same directory

## Updating

```bash
brew update
brew upgrade grannet-md2pdf

# For Quick Action
brew upgrade --cask grannet-md2pdf-quick-action
```

`brew upgrade --cask` does not upgrade the CLI formula. The Quick Action runs the `md2pdf` CLI, so upgrade both.

### Upgrading from 1.0.0 / 1.0.0-xxxxxxx (one-time)

Older CLI builds have a broken code signature and are killed by macOS 27 right after launch, so no PDF is created. Upgrade the CLI, then reinstall the Quick Action:

```bash
brew update
brew upgrade grannet-md2pdf
brew uninstall --cask grannet-md2pdf-quick-action
brew install --cask grannet-md2pdf-quick-action
```

The old Quick Action cask cannot be upgraded in place, so uninstall it first. Its uninstall step uses sudo and asks for an administrator password once, so run these commands from a terminal.

## Uninstalling

```bash
brew uninstall grannet-md2pdf
brew uninstall --cask grannet-md2pdf-quick-action
brew untap grannet/md2pdf
```

## License

MIT
