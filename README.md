# sibling-folder.yazi

Jump to the previous or next sibling directory of the current folder in Yazi.

## Requirements

- Yazi `25.5.28` or newer
- No external dependencies

## Installation

```bash
ya pkg install FichteFoll/sibling-folder.yazi
```

## Configuration

This is a functional plugin,
so you need to bind it in `~/.config/yazi/keymap.toml`:

```toml
[[mgr.prepend_keymap]]
on = [ "[" ]
run = "plugin sibling-folder prev"
desc = "Go to the previous sibling folder"

[[mgr.prepend_keymap]]
on = [ "]" ]
run = "plugin sibling-folder next"
desc = "Go to the next sibling folder"
```

## Usage

- `plugin sibling-folder prev`: jump to the previous sibling directory
- `plugin sibling-folder previous`: alias for `prev`
- `plugin sibling-folder next`: jump to the next sibling directory
- `plugin sibling-folder next --wrap`: jump to the next sibling directory, wrapping to the start if necessary
- `plugin sibling-folder prev --wrap`: jump to the previous sibling directory, wrapping to the end if necessary

The plugin skips non-directory entries and does nothing if no matching sibling directory exists.

## License

This plugin is MIT-licensed. See the [LICENSE](LICENSE) file.
