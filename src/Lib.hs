module Lib (
  given_fun1
  ) where

given_fun1 :: [Integer] -> Integer
given_fun1 [] = 1
given_fun1 (x:xs)
  | even x = (x - 2) * given_fun1 xs
  | otherwise = given_fun1 xs


-- Exercise 1
-- Reimplement fun1 and fun2 in a more idomatic haskell style


