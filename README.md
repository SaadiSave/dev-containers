# dev-containers

A repository containing my personal containerised development environments

## Included software

- C/C++ toolchain (gcc & clang)
- LLVM tools & lld
- Rust toolchain (rustup, rustc, cargo)
- Rust WASM toolchain with [Trunk](https://trunkrs.dev/)
- Python 3.10 & PIP
- Ruby & RubyGems
- [Poetry](https://python-poetry.org/)
- .NET 5
- OpenJDK 17
- Next-gen rust tools (old tools still present):
  | Old  | Rust  |
  |------|-------|
  | cat  | bat   |
  | du   | dust  |
  | grep | rg    |
  | make | just  |
  | find | fd    |
  | cloc | tokei |
  | rm   | rip   |

## Build

Podman is recommended

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
mind that the entrypoint shell is `zsh`, not `bash`. Happy Developing!
