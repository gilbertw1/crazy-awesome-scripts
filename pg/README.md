### pg

A simple script that parses the `.pgpass` file (if you have one), allows you to
select an entry, and connects `pgcli` to that database. If a comment exists on
the line above an entry, that comment is used in the fuzzy finder to select that 
database, otherwise it falls back to using the databases hostname.

If pg is run in the terminal it will prompt the user to select a database using
fzf. However, if it is called non-interactively (not in a terminal) it will pop
up rofi to select a database, then pop up a terminal running `pgcli`.

#### Dependencies

* **[fzf](https://github.com/junegunn/fzf)** - A command-line fuzzy finder
* **[rofi](https://github.com/DaveDavenport/rofi)** - Window switcher and fuzzy matcher
* **[pgcli](https://www.pgcli.com/)** - command line interface for Postgres with auto-completion and syntax highlighting
* **[term-exec](../misc/term-exec)** - Simple script that opens a popup terminal (In this repo)

#### Usage

    ./pg <optional pgpass file>

#### Pgpass file example

.pgpass:

```
# Work Test
work-test.rds.amazonaws.com:5432:work_db:work_user:password1234
# Work Prod
work-prod.rds.amazonaws.com:5432:work_db:work_user:password1234
personal.rds.amazonaws.com:5432:personal_db:personal_user:password1234
```

With the above entries the fuzzy matcher would contain the following to select
from:

```
- Work Test
- Work Prod
- personal.rds.amazonaws.com
```

#### Notes

If a pgpass file is not explicitly provided it falls back to `~/.pgpass`
