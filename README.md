<img align=right width="168" src="docs/gouef_logo.png">

# github-lib-template
Github template for new libraries

[![GoDoc](https://pkg.go.dev/badge/github.com/gouef/github-lib-template.svg)](https://pkg.go.dev/github.com/gouef/github-lib-template)
[![GitHub stars](https://img.shields.io/github/stars/gouef/github-lib-template?style=social)](https://github.com/gouef/github-lib-template/stargazers)
[![Go Report Card](https://goreportcard.com/badge/github.com/gouef/github-lib-template)](https://goreportcard.com/report/github.com/gouef/github-lib-template)
[![codecov](https://codecov.io/github/gouef/github-lib-template/branch/main/graph/badge.svg?token=YUG8EMH6Q8)](https://codecov.io/github/gouef/github-lib-template)

## Versions
![Stable Version](https://img.shields.io/github/v/release/gouef/github-lib-template?label=Stable&labelColor=green)
![GitHub Release](https://img.shields.io/github/v/release/gouef/github-lib-template?label=RC&include_prereleases&filter=*rc*&logoSize=diago)
![GitHub Release](https://img.shields.io/github/v/release/gouef/github-lib-template?label=Beta&include_prereleases&filter=*beta*&logoSize=diago)

## Introduction

This is template repository for new libraries

## Example

```yaml
name: Run tests and upload coverage

on:
  workflow_dispatch:
  pull_request:
    types: [opened, synchronize, edited]
  push:

permissions:
  id-token: write
  contents: read

jobs:
  test:
    name: Run tests and collect coverage
    runs-on: ubuntu-latest
    steps:
      - name: Run tests and upload to coverage
        uses: gouef/go-test-with-coverage-action@main
        with:
          go-version: 1.23.4
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          CODECOV_TOKEN: ${{ secrets.CODECOV_TOKEN }}
```

## Contributors

<div style="display: flex; flex-wrap: wrap; align-items: center; margin-bottom: 10px;">
<span style="width:100px;">
  <a href="https://github.com/JanGalek"><img src="https://raw.githubusercontent.com/gouef/go-test-with-coverage-action/refs/heads/contributors-svg/.github/contributors/JanGalek.svg" alt="JanGalek" /></a>
</span>
<span style="width:100px;">
  <a href="https://github.com/actions-user"><img src="https://raw.githubusercontent.com/gouef/go-test-with-coverage-action/refs/heads/contributors-svg/.github/contributors/actions-user.svg" alt="actions-user" /></a>
</span>
</div>

