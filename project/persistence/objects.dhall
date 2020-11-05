let Hashing = ../../fetch/hashing.dhall

let Paths = ../../fetch/paths.dhall

let Memory
    : Type
    = { handle : Hashing.Digest }

let SingleFile
    : Type
    = { filename : Paths.FileComponent, handle : Memory }

let SingleDirectory
    : Type
    = { dirname : Paths.FileComponent, handle : Hashing.Digest }

let VirtualDirectory
    : Type
    = { files : List SingleFile, directories : List SingleDirectory }

let PersistedObject
    : Type
    = < File : Memory | Directory : VirtualDirectory >

in  { Memory, SingleFile, SingleDirectory, VirtualDirectory, PersistedObject }
