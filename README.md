# dotemacs

Minimalist emacs config. Uses the [straight](https://github.com/raxod502/straight.el) package manager.

## Setup

### Dependency: Emacs

See `Installing Emacs` below.

### Dependency: Fonts

Install [Fira Code](https://github.com/tonsky/FiraCode) for text and [Inconsolata Nerd Font](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Inconsolata/complete/Inconsolata%20Nerd%20Font%20Complete.otf) for modeline.

### Dependency: Clojure-LSP

Install `clojure-lsp` manually: https://github.com/clojure-lsp/clojure-lsp#manually then sanity-check it:

```shell
cp ~/Downloads/clojure-lsp /usr/local/bin/clojure-lsp # preferred
which clojure-lsp                                     # => /usr/local/bin/clojure-lsp
clojure-lsp --help                                    # on MacOS you might need to "allow" it through
                                                      # System Preferences -> Security & Privacy to get:
                                                      # => clojure-lsp 2021.02.11-12.43.06
```

### Install

```shell
git clone https://github.com/kitallis/dotemacs.git ~/.emacs.d
```

On the first run, Emacs will install and compile any packages handled by the package manager. Edit `~/.emacs.d/init-user.el` for small personal tweaks, since this file is gitignored and loaded last.

## Troubleshooting

When in doubt, bounce all your straight packages:

```shell
rm ~/.emacs.d/straight
```

## Maintenance

* Straight / package manager configuration goes in `init.el`
* Configurations broadly categorized go in their own `conf/*.el` files
* Customizations / overrides can go in `init-user.el` and are loaded last
* Run `M-x straight-freeze-dependencies` to keep the lockfile updated for all `straight` recipes

## Installing Emacs

#### OS X

Install vanilla Emacs as a Mac app from http://emacsformacosx.com. Other options, like Aquamacs, are supposed to make Emacs more “Mac-like,” but they’re problematic in the long run because they’re set up so differently from standard Emacs that it’s difficult to use the Emacs manual or follow along with tutorials.

#### Ubuntu

Follow the instructions at https://launchpad.net/~cassou/+archive/emacs.

#### Windows

You can find a binary at http://ftp.gnu.org/gnu/emacs/windows. After you download and unzip the latest version, you can run the Emacs executable under `bin\runemacs.exe`.
