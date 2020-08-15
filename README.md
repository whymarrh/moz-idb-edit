# `moz-idb-edit` Dockerfile

This allows you to view extension storage while the browser is not running. Running [the tool][1] in Docker allows
you to mount the profile as read-only out of an abundance of caution and simplifies the dependency situation.

Resources:

1. See [_ntninja's answer on Stack Overflow_][2] that explains how this works
2. See [moz-idb-edit on GitLab][1] for the actual tool

  [1]:https://gitlab.com/ntninja/moz-idb-edit
  [2]:https://stackoverflow.com/a/59923297/1267663

To build and run the container:

```bash
$ docker build --tag moz-idb-edit .
$ docker run --rm -v "$HOME/Library/Application Support/Firefox/Profiles/ak171s64.default-release":/fx:ro moz-idb-edit python3 entrypoint --profile /fx --extension 'webextension@metamask.io' data
```
