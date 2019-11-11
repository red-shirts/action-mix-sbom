# GitHub Action: Generate CycloneDX SBoM for mix project

[![Docker Image CI](https://github.com/red-shirts/action-mix-sbom/workflows/Docker%20Image%20CI/badge.svg)](https://github.com/red-shirts/action-mix-sbom/actions)
[![Release](https://img.shields.io/github/release/red-shirts/action-mix-sbom.svg?maxAge=43200)](https://github.com/red-shirts/action-mix-sbom/releases)

## Inputs

### `output`

Optional. Name of the generated SBoM file. Defaults to `bom.xml`.

### `include_dev`

Optional. Whether generated file should contain development and test
dependencies. Defaults to `false`.

## Example usage

### [.github/workflows/sbom.yml](.github/workflows/sbom.yml)

```yml
name: sbom
jobs:
  sbom:
    name: runner / elvis
    runs-on: ubuntu-latest
    container:
      image: elixir:1.9.4-slim
    steps:
      - uses: actions/checkout@v1
      - name: Install Dependencies
        run: |
          mix do deps.get, deps.compile
      - name: sbom
        uses: red-shirts/action-mix-sbom@v1
```
