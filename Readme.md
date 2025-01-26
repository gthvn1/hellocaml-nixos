# Setup

I'm not sure that it is the best way to configure the project but for now here it is:

- First I run `nix-shell -p opam` to  initialize opam using the `--bare` option. I only do that
once for all projects.

- In the `shell.nix` I'm running the opam init again just to ensure that it has been initialized once. If it
is already initialzed it has no effect.
- Then I manually create a local switch in my dev repo: `opam switch create ./`
- And I add the dependency like: `dune`, `ocaml-lsp-server` and everything that is needed.
    - not the with nixos the system dependencies must be handled manually
- Once setup I quit and reload the nix-shell.

- Now I can setup a minimal project. I could use `dune init` but I prefere to create a minimal
  - `dune` file
```
(executable
  (name main))
```
  - `dune-project`
```
(lang dune 3.17)
```
  - `.ocamlformat` empty file
  - and finally the `main.ml` that prints ***Hello, Sailor!***
