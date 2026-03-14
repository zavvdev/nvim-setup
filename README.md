# Neovim Setup

Minimum plugins used.

_thanks <3 https://github.com/cpow_

## Prerequisites

1. [Neovim](https://neovim.io/) should be installed.

Check where configuration lives in your system. On Mac it's in _~/.config/nvim_.

Everything that is inside _nvim_ folder in this repo should be in _~/.config/nvim_.

## Keybindings

1. Leader key: `Space`

2. Enter insert mode: `a`

3. Enter visual mode: `v`

### File system

1. Create file: `f f`

2. Create directory: `f d`

3. Edit file/directory name: `f e`

4. Delete file or empty directory: `f r`

#### Moving files

1. Mark directory as target: `Shift Tab`. This is needed for moving/copying files to that target

2. Mark file: `Tab`

3. Unmark all marked files: `Leader Tab`

4. Copy marked files to target directory: `f c`

5. Copy marked files to directory under the cursor: `f C`

6. Move marked files to target directory: `f x`

7. Moved marked files to directory under the cursor: `f X`

8. Run shell command on marked files: `f ;`. For example, mark non-empty directory, use _f ;_ and type _rm -r_ to delete the directory

#### Navigation

1. Bookmark current directory: `f b`

2. Remove most recent bookmark: `f b r`

3. Go to previous bookmarked directory: `f b g`

4. Show list of marked files: `f l m`

5. Change directory to current under cursor: `c d`

6. Move one directory above: `-`

7. Open file tree: `Leader e`

#### Global Search

1. Search in files: `Leader s f`

2. Search in git files: `Leader s f g`

3. Search in files for current word under the cursor: `Leader s w`

4. Search by grep: `Leader s g`

5. Find recently opened files: `Leader ?`

#### File

1. Show list of errors in current file: `Leader s i`

2. Replace in file: `:%s/some text to replace/text to replace with`

3. Search for pattern in file: `?`

4. Search for word under the cursor: `*`

5. Go to specific line in file: `:<line number>`

6. Format file according to formatting rules: `Leader f m`

7. Line comment selected lines: `g c c`

8. Block comment selected lines: `g b c`

9. Go to the very top of the file: `g g`

10. Go to the very bottom of the file: `G`

11. Scroll down: `Ctrl d`

12. Scroll up: `Ctrl u`

13. Undo: `u`

14. Re-do: `Ctrl r`

15. Go to the end of the line: `$`

16. Got to the start of the line: `^`

17. Go to the closed/start bracket/paren/tag of the bracket/pare/tag under cursor: `%`

18. Move line/lines of code forward: `> >`

19. Move line/lines of code backward: `< <`

20. Copy to vim buffer: `y`

21. Paste from vim buffer: `p`

22. Copy to clipboard: `" + y`

23. Add multiline prefix: `Leader a a, add text to the beggining of the first line, Esc`

24. Remove multiline prefix: `Leader a r, select prefix, x`

25. Split vertically: `v`

### LSP

1. Hover over variable/function for showing details: `K`

2. Go to definition: `g d`

3. Code action: `Leader c a`

### Git Diff

1. Open diff view: `Leader d v`

2. Close diff view: `Leader d v c`

3. Open diff view for current file: `Leader d v f`

For more information about resolving merge conflicts with diff view press `g ?` in diff view

### Packages

1. Open package manager: `:Mason`

For more information about plugins see [Mason](https://github.com/mason-org/mason.nvim) documentation.
