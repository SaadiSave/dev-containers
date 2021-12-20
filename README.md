# dev-containers

A repository containing my personal containerised development environments

## Included software

- gcc and clang
- LLVM tools and lld
- Rust development workflow (rustup, rustc, cargo)
- Rust WASM workflow with [Trunk](https://trunkrs.dev/)
- Python 3.10
- [Poetry](https://python-poetry.org/)
- .NET 5
- OpenJDK 17
- [Podman](https://podman.io/) for building and running containers
- Next-gen rust tools:
  | Old  | Rust  |
  |------|-------|
  | cat  | bat   |
  | du   | dust  |
  | grep | rg    |
  | make | just  |
  | find | fd    |
  | cloc | tokei |

## Build

Only tested on podman.

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
2. This file can be used to instantiate a pod either with `kubectl` or `podman`, vastly
reducing repetition.
3. To instantiate using podman, run: `podman play kube [filename].yml`
