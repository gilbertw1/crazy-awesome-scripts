### pw

A simple interactive script that uses `pass` in conjunction with `mpw` to provide a single interface to access all passwords.

#### Dependencies

* **pass** - the standard unix password manager (https://www.passwordstore.org/)
* **mpw** - The master password command line client (https://github.com/Lyndir/MasterPassword)
* **fzf** - Command line fuzzy matcher (https://github.com/junegunn/fzf)
* **rofi** - Window switcher and fuzzy matcher (https://github.com/DaveDavenport/rofi)
* **xsel** - Program that allows programmatic clipboard access (http://www.vergenet.net/~conrad/software/xsel/)

#### Usage

    ./pw


#### How it works

This script works by providing the user a list of all `pass` entries and allowing them to select one. It then retrieves the stored password for the selected entry. If the stored password entry matches a entry `identifier` stored in a mpw (Master Password) config file exactly, then it will prompt the user for their Master Password, which it will then use along with information from the mpw config file to generate a the password for the `site` which is then added to the clipboard. If the password retrieved from `pass` did not match an mpw entry then it will be simply added to the clipboard. A popup notification, optionally containing the generated master password sybols will be displayed as well.

If run from the command line then `pw` uses fzf to match entries, otherwise it uses `rofi` if run non-interactively. Additionally, if a clipster daemon is running the password will be automatically removed from the clipboard after 30 seconds.

#### Configuration

`pw` looks for a single configuration file named `~/.mpw` which contains entries, one per line, of the format:

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
