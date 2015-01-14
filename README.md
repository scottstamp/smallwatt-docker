smallwatt (jenni-based IRC bot) - Docker build
==

Simple IRC bot providing utility services for ##vaperefugees (irc.freenode.net)

### Building:
- Add your IRC password to "ircpass.secret" (this file is excluded by .gitignore)
- Edit defaults.py with the rest of your configuration (leave "changepass" as is, build will replace it)
- Execute ./build (edit this with your own tag, if you wish)
- Run it!
> docker run -d scottstamp/smallwatt

### Sidenotes:
- There is a UUID parameter in the Dockerfile command that pulls github.com/scottstamp/jenni, the build script replaces this with a unique string from /dev/urandom, this is to invalidate the cache. It's optional but recommended.
