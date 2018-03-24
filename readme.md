# Installation

Create `/etc/portage/repos.conf/gg7.conf` as follows:

```
[gg7]
location = /usr/portageOrElsewhere/trees/gg7
auto-sync = yes
sync-type = git
sync-uri = https://github.com/anyc/steam-overlay.git
priority = 50
```

# Disclaimer

Some of the patches found here have been copy-pasted verbatim from elsewhere,
sometimes without attribution. I do not claim to have written everything in this
repository.

# License

Unless otherwise stated, ebuilds here are under the MIT License -- see
`license.txt`.
