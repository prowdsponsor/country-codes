{-# OPTIONS_GHC -F -pgmF htfpp #-}
-- | entry module for tests
module Main where

import Control.Monad (forM_)
import Data.Aeson
import Test.Framework
import Test.HUnit (Assertion)


import Data.CountryCodes

-- | test entry point
main :: IO()
main =  htfMain [htf_thisModulesTests]

-- | CountryCode -> Text -> CountryCode
test_Text :: Assertion
test_Text = forM_ [minBound .. maxBound] $ \c ->
  assertEqual c (fromText $ toText c)
  
-- | CountryCode -> name -> CountryCode
test_Name :: Assertion
test_Name = forM_ [minBound .. maxBound] $ \c ->
  assertEqual c (fromName $ toName c)

-- | CountryCode -> JSON -> CountryCode
test_JSON :: Assertion
test_JSON = forM_ ([minBound .. maxBound]::[CountryCode]) $ \c ->
  assertEqual (Data.Aeson.Success c) (fromJSON $ toJSON c)