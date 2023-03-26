module Quarto where

removePar :: [String] -> [Int]
removePar xs = [length x | x <- xs, length x `mod` 2 /= 0]