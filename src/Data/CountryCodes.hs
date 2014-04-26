module Data.CountryCodes  (
    CountryCode(..)
  , allNames
  , fromText
  , fromName
  , toText
  , toName
) where

import Control.Arrow ((&&&))
import Data.Text (Text)

import Data.CountryCodes.ISO31661


allNames :: [(CountryCode,Text)]
allNames = map (id &&& toName) $ enumFrom minBound