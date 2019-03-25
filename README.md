# dhis2-meta
Meta repository for work on the DHIS2 poly-repo ecosystem

## Requirements

* `git` is required
* `npx` is required to download and run the [`meta`](https://github.com/mateodelnorte/meta) CLI

To avoid the startup lag with `npx`, you may install `meta` globally with:

```sh
> npm install -g meta
OR
> yarn global add meta
```

## Basic usage

**Initialize all repositories**

```sh
> ./clone.sh
```

All the modern DHIS2 repositories should now be cloned (but no branch checked out) in the following heirarchy:

```
- dhis2-meta
  - client
    - apps
      - analytics
        - dashboards
        - maps
        - ...etc...
      - core
        - maintenance
        - user
        - ...etc...
      - core-resource
    - libs
      - ui
      - d2
      - ...etc...
  - server
    - core
    - cluster
  - cli
    - core
    - packages
    - style
```

**Run git commands on all repositories**

```sh
> npx meta git status
```

You can also interact with each component independently (directories are autonomous)
or run commands on some subset of the meta-repo with the `npx meta` command.

See [the meta docs](https://github.com/mateodelnorte/meta) for more information.

## Adding missing repositories

Please open a pull request if there are modern, maintained repositories which should be included!

To add a project to meta:

```sh
> npx meta project add <dir> <url>
# I.E.
> npx meta project add client/apps/analytics/dashboards https://github.com/dhis2/dashboards-app
```

## TODO

* [x] Scaffold meta-repo, add initial set of repositories
* [ ] Add missing repositories (particularly QA, docs, Android)
* [ ] Support inter-project linking for yarn-based repos
* [x] Script basic tasks like cloning and linking
* [ ] Support multiple subsets (probably via multiple `.meta` files), hide 
* [ ] Incorporate into `cli` for easy access
* [ ] Support cross-repo testing
* [ ] Use something better than `meta`?  It's really just the bootstrapping we're after...

Cheers!
