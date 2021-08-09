# Emacs configuration

An emacs configuration for my  Epitech projects. (Linux)


## Installation

[Download emacs.](https://www.gnu.org/software/emacs/download.html)


## Configuration Set-up

1. Create a .emacs.d directory at your root.
```bash
mkdir ~/.emacs.d/
```
2. Copy all the `config/` files in the directory `~/.emacs.d/`.

### Theme

1. In the directory `~/.emacs.d/` create a new directory `themes/`
```bash
cd ~/.emacs.d/ && mkdir themes/
```
2. [Download the monokai-theme file.](https://github.com/oneKelvinSmith/monokai-emacs/blob/master/monokai-theme.el)
3. Copy the monokai-theme file in the `~/.emacs.d/themes/` directory.

## Custom key bindings

  * `C-n`: Open a new tab in the tab bar
  * `C-q`: Close the current tab in the tab bar

## Note

If the configuration is not loaded when emacs starts, try to remove the `~/.emacs/` directory.
```bash
rm -rf ~/.emacs/
```
