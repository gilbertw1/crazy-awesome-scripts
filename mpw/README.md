### mpwc

A simple interactive script that wraps mpw and uses a configuration file to store password configurations.

#### Dependencies

* **[mpwc](https://github.com/gilbertw1/mpwc)** - A simple and flexible Master Password CLI client
* **[fzf](https://github.com/junegunn/fzf)** - Command line fuzzy matcher
* **[rofi](https://github.com/DaveDavenport/rofi)** - Window switcher and fuzzy matcher
* **[xsel](http://www.vergenet.net/~conrad/software/xsel/)** - Program that allows programmatic clipboard access

#### Optional Dependencies

* **clipster** - A simple and flexible clipboard manager (https://github.com/mrichar1/clipster)

#### Usage

    ./mpwc

#### How it works

`mpwc` uses a config file containing mpw (Master Password) configuration entries to allow a user to
select a site and easily generate a password using their Master Password. Once the password is
created it is then added to the users clipboard. A popup notification, optionally containing the
generated master password sybols will be displayed as  well.

If run from the command line then `mpwc` uses fzf to match entries, otherwise it uses `rofi` if run
non-interactively. Additionally, if a clipster daemon is running the password will be automatically
removed from the clipboard after 30  seconds. 

#### Configuration

`mpwc` looks for a single configuration file named `~/.mpw` which contains entries, one per line, of
the  format:

    <identifier> <site> <type> <counter>

An example configuration would be:

    github github.com max 1
    google google.com max 1
    google-work google.com max 2
    yahoo.com long 2

If `yahoo` were chosen then the resulting `mpw` command would be issued to generate it's password:

    mpw -t long -c 1 yahoo.com

#### TODO

* MacOS support
