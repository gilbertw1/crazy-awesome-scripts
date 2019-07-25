### vpn

A simple script that will display the connection status of all vpn's on the
system and allow each to be connected or disconnected using network manager.
This script will surface all vpns along with any interfaces they are connected
too inside of either fzf (interactively via command line) or rofi
(non-interactively). Selecting a vpn that is not connected to any interfaces
will connect to that vpn, and alternatively selecting a vpn connected to an
interface will disconnect that vpn. 

#### Dependencies

* **[fzf](https://github.com/junegunn/fzf)** - A command-line fuzzy finder
* **[rofi](https://github.com/DaveDavenport/rofi)** - Window switcher and fuzzy matcher
* **[nmcli](https://developer.gnome.org/NetworkManager/stable/nmcli.html)** - command-line tool for controlling NetworkManager

#### Usage

    ./vpn
