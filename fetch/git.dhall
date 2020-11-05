let Hashing = ./hashing.dhall

let Paths = ./paths.dhall

let Urls = ./urls.dhall

let GitUrl
    : Type
    = { reduced : Urls.SchemalessUrl }

let GitRepoSource
    : Type
    = < Local : Paths.RealDirectoryPath | Remote : GitUrl >

let GitSource
    : Type
    = { repo : GitRepoSource, fingerprint : Hashing.Fingerprint }

in  { GitUrl, GitRepoSource, GitSource }
