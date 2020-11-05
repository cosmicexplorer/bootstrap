bootstrap
=========

Bootstrap everything from source, by bootstrapping all your tools from source, from source!

# Tool Selection

The tools we will be bootstrapping will be judged by (in order of precedence):
1. Tools which make very complex things happen that are error-prone otherwise.
2. Tools which are very likely to be used in arbitrary scripts somewhere.
3. Tools which can be reliably bootstrapped from a given SHA.
4. Tools which work on all supported platforms.
5. Tools which have premade binaries on common platforms (to reduce download time).

**NOTE:** We will be ensuring through **horrific awful means** that every build will be reproducible, aka producing a single SHA + digest.

# Supported Platforms

1. `linux-x86_64` *(since that's the only one I have access to right now)*

# External Dependencies

1. [*fetch/package*](./fetch/README.md): be able to fetch and extract source files from URLs and git repositories.
2. [*compile*](./compile/README.md): be able to compile and link the C/C++ code you may wish to depend on.
3. [*languages*](./languages/README.md): be able to build the versions of programming languages (and their build tools) you need.

# Internal Configuration

See [internal](./internal/README.md)

# License
[GPL v3.0+](./LICENSE.md)
