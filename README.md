# sibling-folder.yazi

Jump from the current directory to its previous or next sibling directory in the active tab.

## Features

- Moves to the previous or next sibling folder based on the first plugin argument.
- Skips non-folder sibling entries until it finds the next folder in that direction.
- Does nothing when no more sibling folders exist, unless `--wrap` is provided.

## Arguments

- `prev` or `previous`: open the previous sibling folder.
- `next`: open the next sibling folder.
- `--wrap`: wrap around to the other end of the sibling list when the requested direction reaches the end.

## Installation

Place this plugin at `~/.config/yazi/plugins/sibling-folder.yazi`.

## Usage

Add this to `~/.config/yazi/keymap.toml`:

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

If you want wrapping behavior, add `--wrap` to either command:

```toml
run = "plugin sibling-folder prev --wrap"
run = "plugin sibling-folder next --wrap"
```

## License

This plugin is MIT-licensed. See the [LICENSE](LICENSE) file.
