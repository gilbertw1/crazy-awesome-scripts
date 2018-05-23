### zz

A function that uses `z` interactively to search, preview, and select recently used directories. This
also includes a script called `zlite` (code shamelessly extracted from z) that allows `z` to be
invoked from any arbitrary process to search for 'frecent' directories.

#### Dependencies

* **[z](https://github.com/rupa/z)** - A directory jumping utility that tracks 'frecent' directories 
* **[skim](https://github.com/lotabout/skim)** - A blazingly fast fuzzy finder

#### Setup

`zz.sh` need to be sourced in order for the `zz` command to be used. The following should be added
to the `.zshrc` or `.bashrc` file.

    . /path/to/zz.sh

#### Usage

Note that the included `zlite` script is required to be in the `PATH` in order for zz to function
propertly.

    zz [DIR]
    
#### Keybindings

* `ctrl-j / ctrj-n / down`: Next result
* `ctrl-k / ctrj-p / up`: Previous result
* `<enter>`: cd to selected directory

#### Screencast

![zz screencast](http://drop.bryan.sh/3SqhCY8QSj.gif)
