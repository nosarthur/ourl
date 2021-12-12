# ourl: generate Opengrok/Github URL by grepping and finding source code repo

Source code hosting sites like [Opengrok](https://en.wikipedia.org/wiki/OpenGrok)
and [Github](https://en.wikipedia.org/wiki/GitHub) are useful to communicate a
specific location to a colleague.
However, navigating on the web is not as convenient as `grep`ping and
`find`ing in the terminal (or `rg`ing and `fd`ing).

Thus we have this tool `ourl`.

Usage:
```
ourl [-r partial-repo-name] <search-keywords>
```
And the matched URL(s) will be printed.

For example, we can look for file name, function name, class name.
```
ourl -r my-repo analysis.py
ourl -r a-repo "def some_function"
ourl "class MyClass"
```


## rationale

The hosting sites should have a simple correspondence between the
URL and repo file structure. For example,
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

## misc

We could also add a sub-command `config`

```
ourl config repos
ourl config cmds
```
