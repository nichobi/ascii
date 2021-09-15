# [nichobi's ascii art](https://ascii.nichobi.com)

This is an archive of my ascii art, along with a simple script to turn the file into a simple HTML website. A live version is available at [ascii.nichobi.com](https://ascii.nichobi.com)

## Building
To build the website simply run `ascii.hs` with `./ascii.hs` or `runhaskell ascii.hs` (both require [GHC](https://www.haskell.org/ghc/) to be installed).
This will escape any HTML-reserved characters in ascii.txt and sandwich its content between `pre.html` and `post.html`, creating a new file `sitecontent/ascii.html`. This file will then be the main HTML document of the site.
`sitecontent` also contains a favicon file `favicon.ico` and a symlink to the font file `font.otf` (currently Source Code Pro Semibold, path may need to be adjusted on your system).
An NGINX site configuration file `nginx-config` is also included. A symlink to it should be created in `/etc/nginx/sites-available/ascii.nichobi.com`. It assumes there is a symlink from `/www/ascii` to the `sitecontent` directory. If hosting on a different domain, replace any usages of `ascii.nichobi.com` in the file with your own domain.

