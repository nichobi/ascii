# [nichobi's ascii art](https://ascii.isacsson.se)

This is an archive of my ascii art, along with a simple script to turn the file into a simple HTML website. A live version is available at [ascii.isacsson.se](https://ascii.isacsson.se)

## Building
To build the website simply run `ascii.hs` with `./ascii.hs` or `runhaskell ascii.hs` (both require [GHC](https://www.haskell.org/ghc/) to be installed).
This will escape any HTML-reserved characters in ascii.txt and sandwich its content between `pre.html` and `post.html`, creating a new file `out.hs`. This file will then be a self contained website.
