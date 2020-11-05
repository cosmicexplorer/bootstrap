internal
========
How we plan to architect a system that bootstraps itself *entirely from source*, even though **cyclic dependencies** exist!

Note the use of the `project/` subdirectory convention as per sbt. We very likely wish to make this extensible for people publishing their own binaries, so **it would be good to figure out how to structure this directory as if it could just be another `project/` directory.**

# Shell to bootstrap
- [ ] TODO: do we need a shell environment to *truly* bootstrap things? Or just a filesystem and process execution?
  - *(I think the latter)*

# `gpg` to bootstrap
- [ ] Ensure binaries are signed and that we have the key to check them.
  - [ ] As per `git`: https://mirrors.edge.kernel.org/pub/software/scm/git/
  - Unclear how we will be able to obtain `gpg` this early in the bootstrapping process.
  - We may be able to use the process of reproducible builds to verify all non-signed builds.
    - In fact, given how `gpg` key management is so truly awful, it may not make sense to support accepting such a signature for security.
