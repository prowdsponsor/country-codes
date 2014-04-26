{-# LANGUAGE OverloadedStrings, ScopedTypeVariables #-}
-- | generate the ISO31661.hs file from the wikipedia html file
module Main where

import Text.HTML.TagSoup

import qualified Data.Text as T
import qualified Data.Text.IO as T
import Data.Maybe (mapMaybe)
import Data.Monoid ((<>))
import Data.List (foldl')


-- | entry point
main :: IO()
main = do
  -- read from a local version
  txt <- T.readFile "data/ISO 3166-1 alpha-2 - Wikipedia, the free encyclopedia.html"
  -- extract data
  let assocs = extract txt
  -- generate Haskell code
  let haskell=generate assocs
  -- write file
  T.writeFile "src/Data/CountryCodes/ISO31661.hs" haskell
  return ()  
  
-- | extract tuples (code,name) from wikipedia file
extract :: T.Text -> [(T.Text,T.Text)]
extract txt =
  let tts=parseTags txt
      ps1=partitions (~== TagOpen ("span"::T.Text) [("id","Officially_assigned_code_elements")]) tts
  in case ps1 of
    []      -> error "No span with id  'Officially_assigned_code_elements' found"
    (p1 : _) -> 
       let ps2=partitions (~== TagOpen ("table"::T.Text) [("class","wikitable sortable")])  p1
       in case ps2 of
        []       -> error "No wikitable found"
        (p2 : _) ->
          let rows=  partitions (~== TagOpen ("tr" :: T.Text) []) p2
          in mapMaybe  (\r -> 
                let tds=partitions (~== TagOpen ("td"::T.Text) []) r
                in if null tds || null (head tds)
                  then Nothing
                  else 
                    let cid = fromAttrib "id" $ head $ head tds
                        name = fromAttrib "title" $ head $ head $ partitions (~== TagOpen ("a" :: T.Text) []) r
                    in Just (cid,name)
                    ) rows
  
-- | generate haskell code
generate :: [(T.Text,T.Text)] -> T.Text
generate assocs = 
  let
    header = "{-# LANGUAGE DeriveDataTypeable, OverloadedStrings, NoImplicitPrelude, PatternGuards  #-}" <> nl <>
             "-- | This file is generated from the Wikipedia page" <> nl <>
             "-- <http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2>"  <> nl <>
             "module Data.CountryCodes.ISO31661 ("   <> nl <>
             "    CountryCode(..)"     <> nl <>
             "  , fromMText"            <> nl <>
             "  , fromText"            <> nl <>
             "  , fromMName"            <> nl <>           
             "  , fromName"            <> nl <>
             "  , toText"              <> nl <>
             "  , toName"              <> nl <>
             ") where"                 <> nl <>
             nl <>
             "import Control.Applicative (pure)" <> nl <>
             "import           Data.Aeson" <> nl <>
             "import           Data.Typeable" <> nl <>
             "import qualified Data.Text as T" <> nl <>
             "import           Prelude (Show,Read,Eq,Ord,Bounded,Enum,error,($),(++),Maybe(..),(.),fail)" <> nl <>
             nl
    cons = snd (foldl' constructor (True, header) assocs) <> nl <> 
                  "  deriving (Show,Read,Eq,Ord,Bounded,Enum,Typeable)"
    fromMTexts = foldl' fromText (cons <> nl <> nl <>
                  "-- | Maybe get the CountryCode from the text code." <> nl <>
                  "fromMText :: T.Text -> Maybe CountryCode") assocs <> nl <>
                  "fromMText _    = Nothing"
    fromTexts = fromMTexts <> nl <> nl <> 
                  "-- | Get the CountryCode from the text code. Errors if the code is unknown" <> nl <>
                  "fromText :: T.Text -> CountryCode" <> nl <>
                  "fromText c = case fromMText c of" <> nl <>
                  "               Just cc -> cc" <> nl <>
                  "               _       -> error $ \"fromText: Unknown country code:\" ++ T.unpack c"
    toTexts = foldl' toText (fromTexts <> nl <> nl <>
                  "-- | Get the code as text." <> nl <>
                  "toText :: CountryCode -> T.Text") assocs
    fromMNames = foldl' fromName (toTexts <> nl <> nl <>
                  "-- | Maybe get the code from the user readable name." <> nl <>
                  "fromMName :: T.Text -> Maybe CountryCode") assocs <> nl <>
                  "fromMName _    = Nothing"
    fromNames = fromMNames <> nl <> nl <> 
                  "-- | Get the CountryCode from the user readable name. Errors if the name is unknown" <> nl <>
                  "fromName:: T.Text -> CountryCode" <> nl <>
                  "fromName c = case fromMName c of" <> nl <>
                  "               Just cc -> cc" <> nl <>
                  "               _       -> error $ \"fromName: Unknown country code:\" ++ T.unpack c"
    toNames = foldl' toName (fromNames <> nl  <> nl <> 
                 "-- | Get the user readable name." <> nl <> 
                 "toName :: CountryCode -> T.Text") assocs
    json = toNames <>
            "-- | to json: as a simple string" <> nl <>
            "instance ToJSON CountryCode where" <> nl <>
            "  toJSON =toJSON . toText" <> nl <>
            nl <>
            "-- | from json: as a simple string" <> nl <>
            "instance FromJSON CountryCode where" <> nl <>
            "  parseJSON (String s)" <> nl <>
            "    | Just a <- fromMText s=pure a" <> nl <>
            "  parseJSON _ =fail \"CountryCode\"" <> nl
  in json
    
  where 
    constructor :: (Bool,T.Text) -> (T.Text,T.Text) -> (Bool,T.Text)
    constructor (True,acc) (i,_) = (False,acc <> "data CountryCode = " <> nl <> "    " <> i)
    constructor (False,acc) (i,_) = (False,acc <> nl <> "  | " <> i)
    fromText :: T.Text -> (T.Text,T.Text) -> T.Text
    fromText acc (i,_) = acc <> nl <> "fromMText \"" <> i <> "\" = Just " <> i
    toText :: T.Text -> (T.Text,T.Text) -> T.Text
    toText acc (i,_) = acc <> nl <> "toText " <> i <> " = \"" <> i <> "\""
    fromName :: T.Text -> (T.Text,T.Text) -> T.Text
    fromName acc (i,n) = acc <> nl <> "fromMName \"" <> n <> "\" = Just " <> i
    toName :: T.Text -> (T.Text,T.Text) -> T.Text
    toName acc (i,n) = acc <> nl <> "toName " <> i <> " = \"" <> n <> "\""
    
-- | new line
nl :: T.Text    
nl = "\n"
