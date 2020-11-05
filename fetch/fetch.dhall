{- in  { PackageName, Release, Package, xzHttpArchive, xz } -}
let Archive = ./archive.dhall

let Paths = ./paths.dhall

let Urls = ./urls.dhall

let PackageName
    : Type
    = { name : Text }

let Release
    : Type
    = < Arbitrary : Text >

let Package
    : Type
    = { name : PackageName, release : Release }

let xzHttpArchive =
      λ(release : Release) →
        let arbitraryReleaseVersionString
            : Text
            = merge { Arbitrary = λ(s : Text) → s } release

        let xzUrl
            : Text
            = "xz-" ++ arbitraryReleaseVersionString ++ ".tar.gz"

        let domain
            : Urls.Domain
            = { name = Urls.makeDomain [ "tukaani", "org" ] }

        let path
            : Urls.Path
            = { components = Urls.makePath [ "xz", xzUrl ] }

        let inner
            : Urls.HttpUrl
            = { reduced = { port.port = 443, domain, path } }

        in  { source = Archive.BytesSource.Remote inner
            , spec =
                Archive.ArchiveSpec.tar
                  { compression = Some Archive.CompressionTypes.gz }
            }

let xz = xzHttpArchive (Release.Arbitrary "5.2.4")

in  xz
