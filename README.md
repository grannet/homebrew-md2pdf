# Homebrew Tap for md2pdf

Homebrew formulae and casks for [md2pdf](https://github.com/grannet/md2pdf) - a Markdown to single-page PDF converter with Japanese font support.

## Installation

### Add the tap

```bash
brew tap grannet/md2pdf
```

### Install CLI

> **Note**: homebrew-core has a different package with the same name. Use the fully qualified name to install this version.

```bash
brew install grannet/md2pdf/md2pdf
```

### Install Quick Action (optional)

Installs a Finder Quick Action that lets you convert Markdown files to PDF by right-clicking.

```bash
brew install --cask grannet/md2pdf/md2pdf-quick-action
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
brew upgrade grannet/md2pdf/md2pdf

# For Quick Action
brew upgrade --cask grannet/md2pdf/md2pdf-quick-action
```

## Uninstalling

```bash
brew uninstall grannet/md2pdf/md2pdf
brew uninstall --cask grannet/md2pdf/md2pdf-quick-action
brew untap grannet/md2pdf
```

## License

MIT
