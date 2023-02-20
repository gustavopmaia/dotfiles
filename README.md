# Dotfiles

This repository contains my personal dotfiles for configuring my development environment. These dotfiles include configuration files for the following applications:

- [TMUX](https://github.com/tmux/tmux)
- [kitty](https://github.com/kovidgoyal/kitty)
- [nvim](https://github.com/neovim/neovim)
- [i3](https://i3wm.org/)
- [fish](https://fishshell.com/)

# Installation

To install these dotfiles on your machine, clone this repository to your home directory:

```sh
git clone https://github.com/gustavopmaia/dotfiles.git ~/dotfiles
```

Next, navigate to the dotfiles directory and run the install.sh script:

```sh
cd ~/dotfiles
./install.sh
```

The install.sh script will create symbolic links from the dotfiles in this repository to their respective locations in your home directory. It will also install any necessary software packages, as well as fonts and plugins for the various applications.

# Applications

#### TMUX

The **\`.tmux.conf\`** file contains configuration for TMUX, a terminal multiplexer. It includes various settings for the status bar, key bindings, and pane management.

#### kitty

The **\`kitty.conf\`** file contains configuration for kitty, a modern terminal emulator. It includes settings for the color scheme, font, and various other options.

#### nvim

The **\`init.vim\`** file contains configuration for nvim, a modern text editor. It includes various plugins for language support, as well as settings for the user interface and key bindings.

#### i3

The **\`.config/i3/config\`\*** file contains configuration for i3, a tiling window manager. It includes settings for the key bindings, bar, and other options.

#### fish

The **\`config.fish\`** file contains configuration for fish, a user-friendly command line shell. It includes various aliases, functions, and environment variables.

# Contributing

If you would like to contribute to these dotfiles, please feel free to submit a pull request or create an issue. I am always open to feedback and suggestions!
