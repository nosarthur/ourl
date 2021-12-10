# ourl

Generate Opengrok URL by grepping source repo

The opengrok page is slow to load and it is a pain to search for a file,
a function, or a class. As a result, I only search inside local repo.
However, it's more convenient to reference code on opengrok when communicating
with a colleague.
Thus I created this tool.

Usage:
```
ourl [-r partial-repo-name] <file-name|function-name|class-name>
```

The corresponding opengrok URL(s) will be printed.


## rationale

At least for the opengrok I use, there is a simple correspondence between the
URL and repo file structure
```
https://opengrok-site-name/xref/repo-name/path/to/the/file
  |
 \ /
repo-name/path/to/the/file
```

Thus we can simply `grep` the function/class or `find` the file in the repo,
and assemble the URL accordingly.

## components

- command line interface
- subprocess to call `grep` or `find`
- load config file:
  - csv file with repo names and repo paths
  - `grep` and `find` alternatives


