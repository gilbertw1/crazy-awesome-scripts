### mu-index

A script that re-indexes a mail directory using `mu` and creates notifications for each new email. This is best run as a cron job or systemd timer.

#### Dependencies

* *mu* - maildir indexer & searcher (https://github.com/djcb/mu)
* *notify-send* - sends desktop notifications (https://ss64.com/bash/notify-send.html)

#### Usage

    ./mu-index <maildir> <folders> <optional-user>

#### Parameters

* *maildir* - The directory where the maildir is located at (eg: ~/.mail)
* *folders* - Commad delimited list of folders to consider when looking for new mail (eg: "/fastmail/INBOX,/gmail/INBOX")
* *user* - Optional parameter that is required if running as root.

#### Example

    ./mu-index '~/.mail' '/fastmail/INBOX,/gmail/INBOX' myuser
