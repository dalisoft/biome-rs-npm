# biome-rs-npm

A toolchain for web projects, aimed to provide functionalities to maintain them. Biome offers formatter and linter, usable via CLI and LSP.

> **npm** integration for [biome-rs](https://github.com/biomejs/biome) without any overhead so using full power of `biome` CLI performance and feature

## Documentations

Look at [official documentation](https://biomejs.dev)

## Motivation

The tools inherently exhibit rapid performance, yet the `npm` `bin.js` script introduces a discernible overhead when deployed for **Rust** projects, leading to suboptimal startup times. This solution effectively addresses and eliminates this overhead, ensuring that **Rust** projects operate with the expected efficiency. For detailed insights, please refer to the pull requests [biome#2359](https://github.com/biomejs/biome/pull/2359).

> This package is specifically designed for direct Command-Line Interface (CLI) interaction or as an extension for Visual Studio Code.

### The functionality for npx or bunx is not included and is not anticipated to be incorporated in the future

## How this is fast?

This project leverages the [binary2npm](https://github.com/dalisoft/binary2npm) utility to streamline the acquisition of platform-specific binaries. The binaries provided by the author are highly optimized, surpassing the performance of the traditional **Node.js** `bin.js` approach. By invoking the binaries directly, we circumvent unnecessary overhead, resulting in significantly reduced startup times and enhanced efficiency.

## Installation

```sh
npm install dalisoft/biome-rs-npm -D
# or
yarn install dalisoft/biome-rs-npm -D
# or
bun add dalisoft/biome-rs-npm -D
```

## Environment variables

| Name           | Description                                                                                     | Required |
| -------------- | ----------------------------------------------------------------------------------------------- | -------- |
| `GITHUB_TOKEN` | For [GitHub API](https://docs.github.com/rest/overview/resources-in-the-rest-api#rate-limiting) | Yes      |

## Usage

See [Documentations](#documentations), requires [Environment variables](#environment-variables)

## License

Apache-2.0
