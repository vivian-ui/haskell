module Segundo where
    tamanhoPar :: String -> Bool
    tamanhoPar s = mod (length s) 2 == 0