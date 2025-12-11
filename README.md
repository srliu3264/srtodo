# srtodo

A minimalist, Rofi-based Todo List manager for Linux (AwesomeWM, i3, etc.).
It reads directly from a Markdown file, supports categorization, and handles links.

## Features

- 📂 **Markdown-based**: Reads/writes directly to a `.md` file.
- ✅ **Task Management**: Toggle tasks (`[ ]` <-> `[x]`) instantly.
- 🏗 **Auto-Categorization**: Tasks under headers (e.g. `## Work`) are grouped visually.
- 🔁 **Workflow Logic**:
  - Finishing a generic task moves it to a `## Finish` section with a timestamp.
  - "Habit" tasks stay in place for daily reuse.
- 🔗 **Link Support**: Hides ugly URLs and provides a clickable link icon (Ctrl+Y).
- 🎨 **Rofi Interface**: Uses your system theme.

## Requirements

- `rofi`
- `awk`, `sed`, `grep`, `coreutils` (Standard on almost all Linux distros)
- A Nerd Font (for the link icon)

## Install/Uninstall

### Manual Install

You only need to download the project from github, and then run the `install.sh`.

```bash
git clone [https://github.com/srliu3264/srtodo.git](https://github.com/srliu3264/srtodo.git)
cd srtodo
./install.sh
```

Before runing `install.sh`, you probably need to make the shell scripts excutable. 

```bash
chmod +x install.sh srtodo 
```

### Uninstallation

```bash
srtodo --uninstall
```

## Setup

1. Generate a Template (optional):

```bash
srtodo --template < ~/Documents/todo.md >
```

2. Link the Todo.md:

```bash
srtodo --config --path < ~/Documents/todo.md>
```

3. Run it to open the todo list menu:
```bash
srtodo
```

## Usage

### Menu

| Key | Action |
| -------------- | --------------- |
| `<Enter>` | Toggle task (Completed tasks move to 'Finish' section with timestamp unless they are Habits) |
| `<Ctrl> + Y` | Open link in browser |
|`<Esc>`|Close Menu|

### Terminal Commands

| Commands | Action |
| -------------- | --------------- |
| `srtodo` | Open todo menu |
| `srtodo --config --path <path-to-your_todo.md>` | link your todo markdown file |
|`srtodo --template <path/your_todo.md>` | generate a `your_todo.md` template at your path |
| `srtodo --help` | see the help menu |


You can use your favorite editor to edit your `todo.md`, write new tasks or manually changes orders, etc.

### Optional

#### Shortcut through Window Manager

You can add keybinds/shortcuts in your current window manager, to quickly open the menu. For example, if you also use AwesomeWM, you can simply add the following to your `rc.lua` configuration file, to use `<Super> + T` to open the todo menu:

```lua
awful.key({ "Mod4" }, "t", function ()
    awful.spawn("srtodo", false)
end, {description = "open todo", group = "launcher"})
```

#### Static Website Generator

For example, if you also use Zola, You can link a todo markdown file in your zola content folder, so you can both visit the menu through srtodo, and visualize the markdown file on your static website. Front matter required for markdown files in a zola project will be igonored in srtodo, and hence they are perfectly compatible.
