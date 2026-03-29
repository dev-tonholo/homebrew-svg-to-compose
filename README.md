# Homebrew Tap for svg-to-compose (s2c)

Homebrew formulae for installing the [svg-to-compose](https://github.com/rafaeltonholo/svg-to-compose) CLI tool.

**s2c** converts SVG and Android Vector Drawable files to Jetpack Compose `ImageVector` code.

## Installation

```bash
brew install dev-tonholo/svg-to-compose/s2c
```

## Usage

```bash
# Convert an SVG file to Compose ImageVector
s2c --input icon.svg --output ./icons

# See all available options
s2c --help
```

## Upgrade

```bash
brew upgrade s2c
```

## Uninstall

```bash
brew uninstall s2c
```

## Supported Platforms

| Platform | Architecture          |
| -------- | --------------------- |
| macOS    | Apple Silicon (ARM64) |
| macOS    | Intel (x64)           |
| Linux    | x64                   |

## License

MIT
