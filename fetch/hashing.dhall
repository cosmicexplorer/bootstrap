-- These are sha256.
let Fingerprint
    : Type
    = { contents : Text }

let Digest
    : Type
    = { fingerprint : Fingerprint, length : Natural }

in  { Fingerprint, Digest }
