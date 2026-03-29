# goto-sibling.yazi

Jump to the previous or next sibling directory of the current folder in [Yazi][].

## Requirements

- Yazi `25.5.28` or newer

## Installation

```bash
ya pkg install FichteFoll/goto-sibling.yazi
```

## Configuration

This is a functional plugin,
so you need to bind it in `~/.config/yazi/keymap.toml`:

```toml
[[mgr.prepend_keymap]]
on = [ "[" ]
run = "plugin goto-sibling -- prev"
desc = "Go to the previous sibling folder"

[[mgr.prepend_keymap]]
on = [ "]" ]
run = "plugin goto-sibling -- next"
desc = "Go to the next sibling folder"
```

## Usage

- `plugin goto-sibling -- prev`: jump to the previous sibling directory
- `plugin goto-sibling -- previous`: alias for `prev`
- `plugin goto-sibling -- next`: jump to the next sibling directory
- `plugin goto-sibling -- next --wrap`: jump to the next sibling directory, wrapping to the start if necessary
- `plugin goto-sibling -- prev --wrap`: jump to the previous sibling directory, wrapping to the end if necessary

The plugin skips non-directory entries (`mgr.sort_dir_first = false`)
and does nothing if no matching sibling directory exists.

## License

This plugin is MIT-licensed. See the [LICENSE](LICENSE) file.


[Yazi]: https://github.com/sxyazi/yazi
