### mpwc

A simple interactive script that wraps mpw and uses a configuration file to store password configurations.

#### Dependencies

* mpw - The master password command line client (https://github.com/Lyndir/MasterPassword)
* fzf - Command line fuzzy matcher (https://github.com/junegunn/fzf)
* rofi - Window switcher and fuzzy matcher (https://github.com/DaveDavenport/rofi)
* xsel - Program that allows programmatic clipboard access (http://www.vergenet.net/~conrad/software/xsel/)

#### Usage

    ./mpwc

#### How it works

`mpwc` uses a config file containing mpw (Master Password) configuration entries to allow a user to select a site and easily generate a password using their Master Password. Once the password is created it is then added to the users clipboard. If run from the command line then `mpwc` uses fzf to match entries, otherwise it uses `rofi` if run non-interactively.

#### Configuration

`mpwc` looks for a single configuration file named `~/.mpw` which contains entries, one per line, of the format:

    <identifier> <site> <type> <counter>

An example configuration would be:

    github github.com max 1
    google google.com max 1
    google-work google.com max 2
    yahoo.com long 2

If `yahoo` were chosen then the resulting `mpw` command would be issued to generate it's password:

    mpw -t long -c 1 yahoo.com

#### TODO

* User clipster to remove password entry from clipboard after a period of time
* MacOS support
* Surface mpw symbols after entering master password
