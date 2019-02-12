# dhis2-meta
Meta repository for work on the DHIS2 poly-repo ecosystem

## Requirements

The command-line tools [`meta`](https://github.com/mateodelnorte/meta), `git`, and `yarn` must be installed

## Install meta

```sh
> yarn global add meta
```

## Basic usage

**Initialize all repositories**

```sh
> meta git update
```

**Pull the latest in all repositories**

```sh
> meta git pull origin master
```

You can now interact with each component independently (directories are autonomous)
or run commands on some subset of the meta-repo with the `meta` command.

See [the meta docs](https://github.com/mateodelnorte/meta) for more information.
