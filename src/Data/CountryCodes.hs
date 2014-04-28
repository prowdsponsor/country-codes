-- | Main entry point, exposing all that needs to be
module Data.CountryCodes  (
    CountryCode(..)
  , allNames
  , countryList
  , fromMText
  , fromText
  , fromMName
  , fromName
  , toText
  , toName
) where

import Control.Arrow ((&&&))
import Data.Text (Text)

import Data.CountryCodes.ISO31661

-- | list all codes with names
allNames :: [(CountryCode,Text)]
allNames = map (id &&& toName) $ enumFrom minBound
