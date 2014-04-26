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
import Data.List (sortBy)
import Data.Function (on)

-- | list all codes with names
allNames :: [(CountryCode,Text)]
allNames = map (id &&& toName) $ enumFrom minBound

-- | list of names sorted by alphabetical order, with country code
countryList :: [(Text,CountryCode)]
countryList = sortBy (compare `on` fst) $ map (toName &&& id) $ enumFrom minBound