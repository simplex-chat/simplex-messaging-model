module Main where

import Control.Monad.State
import qualified Data.Map as Map
import SimplexModelOld

import PrintScenarios
import Scenarios
import Control.Monad.Writer

-- main :: IO ()
-- main = do
--   let model = SimplexModel Map.empty Map.empty
--   let (_, model') = (runState scenario) model
--   print model'
--   return ()

main :: IO ()
main = do
  let (_, log) = runWriter (establishConnection :: Printer ())
  putStrLn $ unlines log
