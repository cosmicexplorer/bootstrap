let Git = ./git.dhall

let Paths = ./paths.dhall

let Urls = ./urls.dhall

let CompressionTypes
    : Type
    = < xz | gz | bz2 >

let TarArchiveSpec
    : Type
    = { compression : Optional CompressionTypes }

let ZipArchiveSpec
    : Type
    = {}

let ArchiveSpec
    : Type
    = < tar : TarArchiveSpec | zip : ZipArchiveSpec >

let BytesSource
    : Type
    = < Local : Paths.RealFilePath | Remote : Urls.HttpUrl >

let Archive
    : Type
    = { source : BytesSource, spec : ArchiveSpec }

let DirectorySource
    : Type
    = < Local : Paths.RealDirectoryPath
      | Extraction : Archive
      | Checkout : Git.GitSource
      >

in  { CompressionTypes
    , TarArchiveSpec
    , ZipArchiveSpec
    , ArchiveSpec
    , BytesSource
    , Archive
    , DirectorySource
    }
