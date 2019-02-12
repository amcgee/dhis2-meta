# dhis2-meta
Meta repository for work on the DHIS2 poly-repo ecosystem

## Requirements

* `git` is required
* [`meta`](https://github.com/mateodelnorte/meta) is uses to manage the meta-repo
* `yarn` is optional (for work with client packages)

### Install meta

```sh
> yarn global add meta
```

## Basic usage

**Initialize all repositories**

```sh
> meta git update
```

All the modern DHIS2 repositories should now be cloned (though you'll need to pull to actually get the code) in the following heirarchy:

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

**Pull the latest in all repositories**

```sh
> meta git pull origin master
```

You can now interact with each component independently (directories are autonomous)
or run commands on some subset of the meta-repo with the `meta` command.

See [the meta docs](https://github.com/mateodelnorte/meta) for more information.

## Adding missing repositories

Please open a pull request if there are modern, maintained repositories which should be included!

To add a project to meta:

```sh
> meta project add <dir> <url>
# I.E.
> meta project add client/apps/analytics/dashboards https://github.com/dhis2/dashboards-app
```

## TODO

* [x] Scaffold meta-repo, add initial set of repositories
* [ ] Add missing repositories (particularly QA, docs, Android)
* [ ] Support inter-project linking for yarn-based repos
* [ ] Script basic tasks like cloning and linking
* [ ] Support multiple subsets (probably via multiple `.meta` files), hide 
* [ ] Incorporate into `cli` for easy access
* [ ] Support cross-repo testing

Cheers!
