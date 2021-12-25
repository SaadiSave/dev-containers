# dev-containers

A repository containing my personal containerised development environments

## Included software

- C/C++ toolchain (`gcc` & `clang`)
- LLVM tools & `lld`
- Rust toolchain (`rustup`, `rustc` & `cargo`)
- Rust WASM toolchain with [Trunk](https://trunkrs.dev/)
- Python 3.10 & PIP
- Ruby & RubyGems
- [Poetry](https://python-poetry.org/)
- .NET 5
- OpenJDK 17
- [GitUI](https://github.com/extrawurst/gitui), blazing fast terminal-ui for git written in Rust
- [jql](https://github.com/yamafaktory/jql), a JSON Query Language CLI tool built with Rust
- [zoxide](https://github.com/ajeetdsouza/zoxide), a smarter `cd` command (invoked by `z`)
- Next-gen rust tools (old tools also present):
  | Old  | Rust  |
  |------|-------|
  | cat  | bat   |
  | du   | dust  |
  | grep | rg    |
  | make | just  |
  | find | fd    |
  | cloc | tokei |
  | rm   | rip   |
  | ls   | exa   |

## Build

***Podman is recommended***

### podman

```sh
podman build fedora [...options]
```

### docker

```sh
docker build -f fedora/Containerfile fedora [...options]
```

## Prebuilt images

```sh
[podman | docker] pull ghcr.io/saadisave/fedora-dev-env:latest
[podman | docker] run [...options] ghcr.io/saadisave/fedora-dev-env:latest
```

### An added bonus for those using podman

1. Once container is running with your desired configuration, do: \
`podman generate kube [container-name] > [filename].yml`
2. This file can be used to instantiate a pod either with `kubectl` (in your production
environment) or `podman`, vastly reducing repetition.
3. To instantiate using podman, run: `podman play kube [filename].yml`

## An important note

Remember, it's Fedora: a full blown Linux distro. So you can add whatever software you
need using `dnf`. Anything that does not require a systemctl daemon should run. Keep in
mind that the entrypoint shell is `zsh`, not `bash`. Most autocompletion that you might require, e.g. `git`, `dnf`, `cargo`, etc. has already been set up. Additional completions can be added to the `~/.zsh/completions` directory. A `.zshrc` file is also present to customise zsh to your heart's content. Happy Developing!
