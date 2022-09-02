# promtool-junit

Action that executes promtool test rules recursively over provided path.

**This version of promtool has JUnit support added**


Assuming such structure for alerting rules exists:

```
vmalert
└── base
    ├── kustomization.yaml
    └── rules
        └── infrastructure
            ├── coredns
            │   ├── alerts.yaml
            │   └── test.yaml
            └── kubernetes
                ├── alerts.yaml
                └── test.yaml
```

Action will recursivelty scan `test.yaml` files and execute `promtool test rules` againts it with junit report placed within the same directory as `test.yaml` file.

## Inputs

## `path`

**Required** Path over which resuresively test rules will be scanned. Default `""`.

## `test_file`

File with test rules. Default `"test.yaml"`.

## Example usage

```
uses: fivetag/promtool-junit@v0.0.1
with:
  path: 'kustomize/vmalert/base'
  test_file: test.yaml
```
