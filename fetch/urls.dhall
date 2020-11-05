let List/map =
      https://prelude.dhall-lang.org/List/map sha256:dd845ffb4568d40327f2a817eb42d1c6138b929ca758d50bc33112ef3c885680

let Scheme
    : Type
    = { scheme : Text }

let DomainComponent
    : Type
    = { component : Text }

let Domain
    : Type
    = { name : List DomainComponent }

let componentizeDomain
    : Text → DomainComponent
    = λ(c : Text) → { component = c }

let makeDomain
    : List Text → List DomainComponent
    = λ(parts : List Text) →
        List/map Text DomainComponent componentizeDomain parts

let Port
    : Type
    = { port : Natural }

let PathComponent
    : Type
    = { component : Text }

let Path
    : Type
    = { components : List DomainComponent }

let componentizePath
    : Text → DomainComponent
    = λ(c : Text) → { component = c }

let makePath
    : List Text → List PathComponent
    = λ(parts : List Text) → List/map Text PathComponent componentizePath parts

let SchemalessUrl
    : Type
    = { domain : Domain, port : Port, path : Path }

let HttpUrl
    : Type
    = { reduced : SchemalessUrl }

in  { Scheme
    , DomainComponent
    , Domain
    , makeDomain
    , Port
    , Path
    , makePath
    , SchemalessUrl
    , HttpUrl
    }
