module Nono where
    ordem :: String -> String -> String -> (String, String, String)
    ordem x y z = (reverse x, reverse y , reverse z)