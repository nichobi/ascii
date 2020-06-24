#!/usr/bin/env runhaskell

import System.IO
main = do
  pre    <- readFile "pre.html"
  ascii  <- readFile "ascii.txt"
  post   <- readFile "post.html"
  outH   <- openFile "sitecontent/ascii.html" WriteMode
  mapM   (hPutStr outH) [pre, htmlEscape ascii, post]
  hClose outH

htmlEscape :: String -> String
htmlEscape "" = ""
htmlEscape ('&':xs) = "&amp;" ++ htmlEscape xs
htmlEscape ('<':xs) = "&lt;"  ++ htmlEscape xs
htmlEscape (x:xs)   = x       :  htmlEscape xs

