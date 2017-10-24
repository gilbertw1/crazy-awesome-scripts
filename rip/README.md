### rip

A simple script that uses ripgrep interactively to search or 'rip' through text or code files while
showing syntax highlighted previews. Upon selecting a search result neovim is opened to the file and
line containing the result.

#### Dependencies

* **ripgrep** - A crazy fast line oriented search tool (https://github.com/BurntSushi/ripgrep)
* **skim** - A blazingly fast fuzzy finder (https://github.com/lotabout/skim)
* **neovim** - Too lazy to find a generic way use $EDITOR and allow opening file to specific line
* **highlight** - A flexible command line source code highlighter (http://www.andre-simon.de/doku/highlight/en/highlight.php)

#### Usage

Note that the included `preview` script is required to be in the `PATH` in order for rip to properly
show code previews.

    ./rip

#### Keybindings

    - `ctrl-j / ctrj-n / down`: Next result
    - `ctrl-k / ctrj-p / up`: Previous result
    - `<enter>`: Open selected file/line in neovim

#### Screencast

![rip screencast](http://drop.bryan.sh/ETrpU7KkH5--rip.gif)
