### rip

A simple script that uses ripgrep interactively to search or 'rip' through text or code files while
showing syntax highlighted previews. Upon selecting a search result neovim is opened to the file and
line containing the result.

#### Dependencies

* **[ripgrep](https://github.com/BurntSushi/ripgrep)** - A crazy fast line oriented search tool
* **[skim](https://github.com/lotabout/skim)** - A blazingly fast fuzzy finder
* **[neovim](https://neovim.io)** - Too lazy to find a generic way use $EDITOR and allow opening file to specific line
* **[highlight](http://www.andre-simon.de/doku/highlight/en/highlight.php)** - A flexible command line source code highlighter

#### Usage

Note that the included `preview` script is required to be in the `PATH` in order for rip to properly
show code previews.

    ./rip [QUERY]

#### Flags

* `-i`: Use ivy-regex-plus style matching (http://oremacs.com/swiper/#ivy--regex-plus)

#### Keybindings

* `ctrl-j / ctrj-n / down`: Next result
* `ctrl-k / ctrj-p / up`: Previous result
* `<enter>`: Open selected file/line in neovim

#### Screencast

![rip screencast](http://drop.bryan.sh/vDfUkGmrBm.gif)
