let PathComponent
    : Type
    = { component : Text }

let RealFilesystemPath
    : Type
    = { components : List PathComponent }

let rootPath
    : RealFilesystemPath
    = { components = [] : List PathComponent }

let RealDirectoryPath
    : Type
    = { path : RealFilesystemPath }

let rootDir
    : RealDirectoryPath
    = { path = rootPath }

let FileComponent
    : Type
    = { filename : PathComponent }

let RealFilePath
    : Type
    = { containing : RealDirectoryPath, file : FileComponent }

in  { PathComponent
    , RealFilesystemPath
    , rootPath
    , RealDirectoryPath
    , rootDir
    , FileComponent
    , RealFilePath
    }
