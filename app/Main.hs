module Main where

import Lib
import Language.Haskell.Interpreter

demort :: String -> String -> IO ()
demort cmd ('(':stresult) = demort cmd (init stresult)
demort cmd stresult = putStrLn (cmd ++ " = " ++ stresult)

demor :: String -> String -> IO ()
demor cmd sresult = demort cmd (drop 6 sresult) 

imports = ["Prelude","Lib"]

demoInt :: String -> IO ()
demoInt cmd = do
  result <- runInterpreter $ setImports imports >> interpret cmd (as :: Integer)
  demor cmd (show result)


main :: IO ()
main = do
  putStrLn "CIS194 Homework 4"

  putStrLn "\nExercise 1"
  demoInt  "given_fun1 []         "
  demoInt  "given_fun1 [1,2,3,4,5]"
  demoInt  "given_fun1 [1,3,4,5,6]"
