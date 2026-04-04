# Neovim Setup

Minimum plugins used.

## Prerequisites

1. [Neovim](https://neovim.io/) should be installed.

2. [Git](https://git-scm.com/) should be installed.

Check where the configuration lives on your system. On macOS it's in _~/.config/nvim_.

Everything inside the _nvim_ folder in this repository should be placed in _~/.config/nvim_.

## Keybindings

Leader key: `Space`. The Leader key is pressed before a keybinding combination.

### File System

From netrw:

1. Create a file: `f f`.

2. Create a directory: `f d`.

3. Edit the name of the file/directory under the cursor: `f e`.

4. Delete the file or empty directory under the cursor: `f r`.

#### Moving Files

From netrw:

1. Mark a directory as the target: `Shift Tab`. This is required when moving or copying files to that directory.

2. Mark/unmark a file or directory: `Tab`.

3. Unmark all marked files and directories: `Leader Tab`.

4. Copy marked files/directories to the target directory: `f c`.

5. Copy marked files/directories to the directory under the cursor: `f C`.

6. Move marked files/directories to the target directory: `f x`.

7. Move marked files/directories to the directory under the cursor: `f X`.

8. Run a shell command on marked files/directories: `f ;`.
   For example, mark a non-empty directory, use _f ;_, then type _rm -r_ to delete it.

#### Navigation

From netrw:

1. Bookmark the current directory: `f b`.

2. Remove the most recent bookmark: `f b r`.

3. Go to the previous bookmarked directory: `f b g`.

4. Show a list of marked files: `f l m`.

5. Change to the directory under the cursor: `c d`.

6. Move up one directory: `-`.

7. Open the file tree (from a file): `Leader e`.

8. Open a file in a new tab: place the cursor on a file/directory and press `t`.

9. Navigate to an open tab by number: `Ngt`, where N is the tab number.

#### Global Search

1. Search in files: `Leader s f`.

2. Search in git files: `Leader s f g`.

3. Search for the word under the cursor in files: `Leader s w`.

4. Search by grep: `Leader s g`.

5. Find recently opened files: `Leader ?`.

#### File

1. Show a list of errors in the current file: `Leader s i`.

2. Search for a pattern in the file: `?`.

3. Search for the word under the cursor: `*`.

4. Go to a specific line in the file: `:<line number>`.

5. Format the file according to formatting rules: `Leader f m`.

6. Line-comment selected lines: `g c c`.

7. Block-comment selected lines: `g b c`.

8. Go to the very top of the file: `g g`.

9. Go to the very bottom of the file: `G`.

10. Toggle autocomplete in insert mode: `Shift Tab`.

11. Scroll down: `Ctrl d`.

12. Scroll up: `Ctrl u`.

13. Copy to clipboard: `" + y`.

14. Add a multi-line prefix: `Leader a a`, add text to the beginning of the first line, `Esc`.

15. Remove a multi-line prefix: `Leader a r`, select the prefix, `x`.

16. Split vertically: press `v` on a file in netrw.

17. Split vertically: `Leader v` from a file.

18. Open the current file in a new tab: `Leader t` from a file.

19. Increase window width: `Leader >`.

20. Decrease window width: `Leader <`.

21. Equalize split sizes: `Leader =`.

22. Place the cursor on a number in normal mode and press `A` to increment or `X` to decrement it.

### LSP

1. Hover over a variable/function to show details: `K`.

2. Go to definition: `g d`.

3. Show code actions: `Leader c a`.

### Git Diff

1. Open diff view: `Leader d v`.

2. Close diff view: `Leader d v c`.

3. Open diff view for the current file: `Leader d v f`.

For more information about resolving merge conflicts in diff view, press `g ?` while in diff view.

### Packages

1. Open the package manager: `:Mason`.

For more information about plugins, see the [Mason](https://github.com/mason-org/mason.nvim) documentation.

## Other Useful Keybindings

### Cursor Movement

`e` - jump forwards to the end of a word.

`b` - jump backward to the end of a word.

`%` - move the cursor to a matching character (default supported pairs: `()`, `{}`, `[]` — use `:h matchpairs` in Vim for more info).

`0` - jump to the start of the line.

`^` - jump to the first non-blank character of the line.

`$` - jump to the end of the line.

`g_` - jump to the last non-blank character of the line.

`gg` - go to the first line of the document.

`G` - go to the last line of the document.

`}` - jump to the next paragraph (or function/block when editing code).

`{` - jump to the previous paragraph (or function/block when editing code).

### Insert Mode — Inserting/Appending Text

`i` - insert before the cursor.

`I` - insert at the beginning of the line.

`a` - insert (append) after the cursor.

`A` - insert (append) at the end of the line.

`o` - append (open) a new line below the current line.

`O` - append (open) a new line above the current line.

`ea` - insert (append) at the end of the word.

`Ctrl + w` - delete the word before the cursor.

`Ctrl + t` - indent (move right) the line one shiftwidth.

`Ctrl + d` - de-indent (move left) the line one shiftwidth.

`Ctrl + n` - insert the next autocomplete match before the cursor.

`Ctrl + p` - insert the previous autocomplete match before the cursor.

### Editing

`r` - replace a single character.

`R` - replace more than one character until ESC is pressed.

`J` - join the line below to the current one with one space in between.

`cc` - change (replace) the entire line.

`c$` or `C` - change (replace) to the end of the line.

`cw` or `ce` - change (replace) to the end of the word.

`s` - delete the character and substitute text (same as `cl`).

`S` - delete the line and substitute text (same as `cc`).

`u` - undo.

`Ctrl + r` - redo.

`.` - repeat the last command.

### Marking Text (Visual Mode)

`v` - start visual mode; mark lines, then run a command (e.g. `y` to yank).

`V` - start linewise visual mode.

`Ctrl + v` - start visual block mode.

`a(` - a block with `()`.

`a{` - a block with `{}`.

`at` - a block with `<>` tags.

`i(` - inner block with `()`.

`i{` - inner block with `{}`.

`it` - inner block with `<>` tags.

### Visual Commands

`>` - shift text right.

`<` - shift text left.

`y` - yank (copy) marked text.

`d` - delete marked text.

`~` - switch case.

`u` - change marked text to lowercase.

`U` - change marked text to uppercase.

### Marks and Positions

`ma` - set the current position as mark A.

`` `a `` - jump to the position of mark A.

`` `. `` - go to the position of the last change in this file.

`g,` - go to a newer position in the change list.

`g;` - go to an older position in the change list.

### Macros

`qa` - record macro a.

`q` - stop recording the macro.

`@a` - run macro a.

`@@` - rerun the last run macro.

### Cut and Paste

`yy` - yank (copy) a line.

`Nyy` - yank (copy) N lines downward.

`Ny<up|down>` - yank (copy) N lines up or down.

`yw` - yank (copy) characters from the cursor position to the start of the next word.

`yiw` - yank (copy) the word under the cursor.

`y$` or `Y` - yank (copy) to the end of the line.

`p` - put (paste) clipboard contents after the cursor.

`P` - put (paste) before the cursor.

`dd` - delete (cut) a line.

`Ndd` - delete (cut) N lines downward.

`Nd<up|down>` - delete (cut) N lines up or down.

`dw` - delete (cut) characters from the cursor position to the start of the next word.

`:g/{pattern}/d` - delete all lines containing a pattern.

`:g!/{pattern}/d` - delete all lines not containing a pattern.

`d$` or `D` - delete (cut) to the end of the line.

`x` - delete (cut) a character.

### Indent Text

`>>` - indent (move right) the line one shiftwidth.

`<<` - de-indent (move left) the line one shiftwidth.

`>%` - indent a block with `()` or `{}` (cursor on brace).

`<%` - de-indent a block with `()` or `{}` (cursor on brace).

### Exiting

`:w` - write (save) the file without exiting.

`:wq` - write (save) and quit.

`:q` - quit (fails if there are unsaved changes).

`:qa` - quit all (fails if there are unsaved changes).

`:q!` - quit and discard unsaved changes.

`:wqa` - write (save) and quit all tabs.

### Search and Replace

`/pattern` - search for a pattern.

`?pattern` - search backward for a pattern.

`n` - go to the next match.

`N` - go to the previous match.

`:%s/old/new/g` - replace all occurrences of old with new throughout the file.

`:%s/old/new/gc` - replace all occurrences with confirmation.

`:%s/old/new/gi` - replace all occurrences, case-insensitive.

`:%s/old/new/gI` - replace all occurrences, case-sensitive.

`:%s/old/new/gIc` - replace all occurrences, case-sensitive, with confirmation.

---

You can find more Vim commands [here](https://vim.rtorr.com/).
