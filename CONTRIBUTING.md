# Contributing

This repository includes a [GitHub Action] that builds the
colorschemes once a week. This keeps the colorschemes up-to-date
automatically.

## Building

### Dependencies

- `>=0.2.0` [base16-builder-go]
- golang `>=1.16` to build base16-builder-go

### Usage for template editing

1. Clone [base16-builder-go] somewhere on your system.
1. Run `cd /path/to/base-builder-go && go build` to generate a binary:
`/path/to/base-builder-go/base16-builder-go`
1. Now execute the binary you generated while giving the `-template-dir`
arg the path to `base16-rofi` repository: `./base16-builder-go
-template-dir ../base16-rofi`

Or the above steps represented in shell commands:

```shell
cd /path/to/base16-rofi/../ # This repos parent dir
git clone git@github.com:base16-project/base16-builder-go.git
cd base16-builder-go
go build ./base16-builder-go/base16-builder-go \
  -template-dir ../base16-rofi
```

### Usage for adding or editing a colorscheme

If you want to add or edit a colorscheme but want to test it out, you
simply need to pass in your local [base16-schemes] directory when
executing the `base16-builder-go` binary.

```shell
base16-builder-go \
  -schemes-dir /path/to/base16-schemes \
  -template-dir /path/to/base16-rofi
```

If you have more questions about [base16-builder-go], have a look at
the information on the GitHub page.

## Submitting a PR

- Run the colorscheme generation using [base16-builder-go] and commit
  the changes in your PR. Don't make changes directly to the generated
  colorschemes, make changes to the template instead.
- Please abide by what's requested in the [PR template].

## Submitting an issue

Please follow the instructions in the issue templates:

- [Issue template for bug reports]
- [Issue template for feature requests]

[base16-builder-go]: https://github.com/base16-project/base16-builder-go
[base16-schemes]: https://github.com/base16-project/base16-schemes
[Github Action]: .github/workflows/update.yml
[PR template]: .github/pull_request_template.md
[Issue template for bug reports]: .github/ISSUE_TEMPLATE/bug_report.md
[Issue template for feature requests]: .github/ISSUE_TEMPLATE/feature_request.md
