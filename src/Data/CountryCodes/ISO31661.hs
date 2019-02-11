{-# LANGUAGE DeriveDataTypeable, OverloadedStrings, NoImplicitPrelude, PatternGuards, FlexibleInstances, MultiParamTypeClasses #-}
-- | This file is generated from the Wikipedia page
-- <http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2>
module Data.CountryCodes.ISO31661 (
    CountryCode(..)
  , countryList
  , fromMText
  , fromText
  , fromMName
  , fromName
  , toText
  , toName
) where

import Control.Applicative (pure)
import Control.DeepSeq (NFData(..))
import           Data.Aeson
import           Data.Typeable
import qualified Data.Text as T
import           Prelude (Show,Read,Eq,Ord,Bounded,Enum,error,($),(++),Maybe(..),(.),fail,seq)
import           Text.Shakespeare.I18N

data CountryCode = 
    AD
  | AE
  | AF
  | AG
  | AI
  | AL
  | AM
  | AO
  | AQ
  | AR
  | AS
  | AT
  | AU
  | AW
  | AX
  | AZ
  | BA
  | BB
  | BD
  | BE
  | BF
  | BG
  | BH
  | BI
  | BJ
  | BL
  | BM
  | BN
  | BO
  | BQ
  | BR
  | BS
  | BT
  | BV
  | BW
  | BY
  | BZ
  | CA
  | CC
  | CD
  | CF
  | CG
  | CH
  | CI
  | CK
  | CL
  | CM
  | CN
  | CO
  | CR
  | CU
  | CV
  | CW
  | CX
  | CY
  | CZ
  | DE
  | DJ
  | DK
  | DM
  | DO
  | DZ
  | EC
  | EE
  | EG
  | EH
  | ER
  | ES
  | ET
  | FI
  | FJ
  | FK
  | FM
  | FO
  | FR
  | GA
  | GB
  | GD
  | GE
  | GF
  | GG
  | GH
  | GI
  | GL
  | GM
  | GN
  | GP
  | GQ
  | GR
  | GS
  | GT
  | GU
  | GW
  | GY
  | HK
  | HM
  | HN
  | HR
  | HT
  | HU
  | ID
  | IE
  | IL
  | IM
  | IN
  | IO
  | IQ
  | IR
  | IS
  | IT
  | JE
  | JM
  | JO
  | JP
  | KE
  | KG
  | KH
  | KI
  | KM
  | KN
  | KP
  | KR
  | KW
  | KY
  | KZ
  | LA
  | LB
  | LC
  | LI
  | LK
  | LR
  | LS
  | LT
  | LU
  | LV
  | LY
  | MA
  | MC
  | MD
  | ME
  | MF
  | MG
  | MH
  | MK
  | ML
  | MM
  | MN
  | MO
  | MP
  | MQ
  | MR
  | MS
  | MT
  | MU
  | MV
  | MW
  | MX
  | MY
  | MZ
  | NA
  | NC
  | NE
  | NF
  | NG
  | NI
  | NL
  | NO
  | NP
  | NR
  | NU
  | NZ
  | OM
  | PA
  | PE
  | PF
  | PG
  | PH
  | PK
  | PL
  | PM
  | PN
  | PR
  | PS
  | PT
  | PW
  | PY
  | QA
  | RE
  | RO
  | RS
  | RU
  | RW
  | SA
  | SB
  | SC
  | SD
  | SE
  | SG
  | SH
  | SI
  | SJ
  | SK
  | SL
  | SM
  | SN
  | SO
  | SR
  | SS
  | ST
  | SV
  | SX
  | SY
  | SZ
  | TC
  | TD
  | TF
  | TG
  | TH
  | TJ
  | TK
  | TL
  | TM
  | TN
  | TO
  | TR
  | TT
  | TV
  | TW
  | TZ
  | UA
  | UG
  | UM
  | US
  | UY
  | UZ
  | VA
  | VC
  | VE
  | VG
  | VI
  | VN
  | VU
  | WF
  | WS
  | YE
  | YT
  | ZA
  | ZM
  | ZW
  deriving (Show,Read,Eq,Ord,Bounded,Enum,Typeable)

-- | Maybe get the CountryCode from the text code.
fromMText :: T.Text -> Maybe CountryCode
fromMText "AD" = Just AD
fromMText "AE" = Just AE
fromMText "AF" = Just AF
fromMText "AG" = Just AG
fromMText "AI" = Just AI
fromMText "AL" = Just AL
fromMText "AM" = Just AM
fromMText "AO" = Just AO
fromMText "AQ" = Just AQ
fromMText "AR" = Just AR
fromMText "AS" = Just AS
fromMText "AT" = Just AT
fromMText "AU" = Just AU
fromMText "AW" = Just AW
fromMText "AX" = Just AX
fromMText "AZ" = Just AZ
fromMText "BA" = Just BA
fromMText "BB" = Just BB
fromMText "BD" = Just BD
fromMText "BE" = Just BE
fromMText "BF" = Just BF
fromMText "BG" = Just BG
fromMText "BH" = Just BH
fromMText "BI" = Just BI
fromMText "BJ" = Just BJ
fromMText "BL" = Just BL
fromMText "BM" = Just BM
fromMText "BN" = Just BN
fromMText "BO" = Just BO
fromMText "BQ" = Just BQ
fromMText "BR" = Just BR
fromMText "BS" = Just BS
fromMText "BT" = Just BT
fromMText "BV" = Just BV
fromMText "BW" = Just BW
fromMText "BY" = Just BY
fromMText "BZ" = Just BZ
fromMText "CA" = Just CA
fromMText "CC" = Just CC
fromMText "CD" = Just CD
fromMText "CF" = Just CF
fromMText "CG" = Just CG
fromMText "CH" = Just CH
fromMText "CI" = Just CI
fromMText "CK" = Just CK
fromMText "CL" = Just CL
fromMText "CM" = Just CM
fromMText "CN" = Just CN
fromMText "CO" = Just CO
fromMText "CR" = Just CR
fromMText "CU" = Just CU
fromMText "CV" = Just CV
fromMText "CW" = Just CW
fromMText "CX" = Just CX
fromMText "CY" = Just CY
fromMText "CZ" = Just CZ
fromMText "DE" = Just DE
fromMText "DJ" = Just DJ
fromMText "DK" = Just DK
fromMText "DM" = Just DM
fromMText "DO" = Just DO
fromMText "DZ" = Just DZ
fromMText "EC" = Just EC
fromMText "EE" = Just EE
fromMText "EG" = Just EG
fromMText "EH" = Just EH
fromMText "ER" = Just ER
fromMText "ES" = Just ES
fromMText "ET" = Just ET
fromMText "FI" = Just FI
fromMText "FJ" = Just FJ
fromMText "FK" = Just FK
fromMText "FM" = Just FM
fromMText "FO" = Just FO
fromMText "FR" = Just FR
fromMText "GA" = Just GA
fromMText "GB" = Just GB
fromMText "GD" = Just GD
fromMText "GE" = Just GE
fromMText "GF" = Just GF
fromMText "GG" = Just GG
fromMText "GH" = Just GH
fromMText "GI" = Just GI
fromMText "GL" = Just GL
fromMText "GM" = Just GM
fromMText "GN" = Just GN
fromMText "GP" = Just GP
fromMText "GQ" = Just GQ
fromMText "GR" = Just GR
fromMText "GS" = Just GS
fromMText "GT" = Just GT
fromMText "GU" = Just GU
fromMText "GW" = Just GW
fromMText "GY" = Just GY
fromMText "HK" = Just HK
fromMText "HM" = Just HM
fromMText "HN" = Just HN
fromMText "HR" = Just HR
fromMText "HT" = Just HT
fromMText "HU" = Just HU
fromMText "ID" = Just ID
fromMText "IE" = Just IE
fromMText "IL" = Just IL
fromMText "IM" = Just IM
fromMText "IN" = Just IN
fromMText "IO" = Just IO
fromMText "IQ" = Just IQ
fromMText "IR" = Just IR
fromMText "IS" = Just IS
fromMText "IT" = Just IT
fromMText "JE" = Just JE
fromMText "JM" = Just JM
fromMText "JO" = Just JO
fromMText "JP" = Just JP
fromMText "KE" = Just KE
fromMText "KG" = Just KG
fromMText "KH" = Just KH
fromMText "KI" = Just KI
fromMText "KM" = Just KM
fromMText "KN" = Just KN
fromMText "KP" = Just KP
fromMText "KR" = Just KR
fromMText "KW" = Just KW
fromMText "KY" = Just KY
fromMText "KZ" = Just KZ
fromMText "LA" = Just LA
fromMText "LB" = Just LB
fromMText "LC" = Just LC
fromMText "LI" = Just LI
fromMText "LK" = Just LK
fromMText "LR" = Just LR
fromMText "LS" = Just LS
fromMText "LT" = Just LT
fromMText "LU" = Just LU
fromMText "LV" = Just LV
fromMText "LY" = Just LY
fromMText "MA" = Just MA
fromMText "MC" = Just MC
fromMText "MD" = Just MD
fromMText "ME" = Just ME
fromMText "MF" = Just MF
fromMText "MG" = Just MG
fromMText "MH" = Just MH
fromMText "MK" = Just MK
fromMText "ML" = Just ML
fromMText "MM" = Just MM
fromMText "MN" = Just MN
fromMText "MO" = Just MO
fromMText "MP" = Just MP
fromMText "MQ" = Just MQ
fromMText "MR" = Just MR
fromMText "MS" = Just MS
fromMText "MT" = Just MT
fromMText "MU" = Just MU
fromMText "MV" = Just MV
fromMText "MW" = Just MW
fromMText "MX" = Just MX
fromMText "MY" = Just MY
fromMText "MZ" = Just MZ
fromMText "NA" = Just NA
fromMText "NC" = Just NC
fromMText "NE" = Just NE
fromMText "NF" = Just NF
fromMText "NG" = Just NG
fromMText "NI" = Just NI
fromMText "NL" = Just NL
fromMText "NO" = Just NO
fromMText "NP" = Just NP
fromMText "NR" = Just NR
fromMText "NU" = Just NU
fromMText "NZ" = Just NZ
fromMText "OM" = Just OM
fromMText "PA" = Just PA
fromMText "PE" = Just PE
fromMText "PF" = Just PF
fromMText "PG" = Just PG
fromMText "PH" = Just PH
fromMText "PK" = Just PK
fromMText "PL" = Just PL
fromMText "PM" = Just PM
fromMText "PN" = Just PN
fromMText "PR" = Just PR
fromMText "PS" = Just PS
fromMText "PT" = Just PT
fromMText "PW" = Just PW
fromMText "PY" = Just PY
fromMText "QA" = Just QA
fromMText "RE" = Just RE
fromMText "RO" = Just RO
fromMText "RS" = Just RS
fromMText "RU" = Just RU
fromMText "RW" = Just RW
fromMText "SA" = Just SA
fromMText "SB" = Just SB
fromMText "SC" = Just SC
fromMText "SD" = Just SD
fromMText "SE" = Just SE
fromMText "SG" = Just SG
fromMText "SH" = Just SH
fromMText "SI" = Just SI
fromMText "SJ" = Just SJ
fromMText "SK" = Just SK
fromMText "SL" = Just SL
fromMText "SM" = Just SM
fromMText "SN" = Just SN
fromMText "SO" = Just SO
fromMText "SR" = Just SR
fromMText "SS" = Just SS
fromMText "ST" = Just ST
fromMText "SV" = Just SV
fromMText "SX" = Just SX
fromMText "SY" = Just SY
fromMText "SZ" = Just SZ
fromMText "TC" = Just TC
fromMText "TD" = Just TD
fromMText "TF" = Just TF
fromMText "TG" = Just TG
fromMText "TH" = Just TH
fromMText "TJ" = Just TJ
fromMText "TK" = Just TK
fromMText "TL" = Just TL
fromMText "TM" = Just TM
fromMText "TN" = Just TN
fromMText "TO" = Just TO
fromMText "TR" = Just TR
fromMText "TT" = Just TT
fromMText "TV" = Just TV
fromMText "TW" = Just TW
fromMText "TZ" = Just TZ
fromMText "UA" = Just UA
fromMText "UG" = Just UG
fromMText "UM" = Just UM
fromMText "US" = Just US
fromMText "UY" = Just UY
fromMText "UZ" = Just UZ
fromMText "VA" = Just VA
fromMText "VC" = Just VC
fromMText "VE" = Just VE
fromMText "VG" = Just VG
fromMText "VI" = Just VI
fromMText "VN" = Just VN
fromMText "VU" = Just VU
fromMText "WF" = Just WF
fromMText "WS" = Just WS
fromMText "YE" = Just YE
fromMText "YT" = Just YT
fromMText "ZA" = Just ZA
fromMText "ZM" = Just ZM
fromMText "ZW" = Just ZW
fromMText _    = Nothing

-- | Get the CountryCode from the text code. Errors if the code is unknown
fromText :: T.Text -> CountryCode
fromText c = case fromMText c of
               Just cc -> cc
               _       -> error $ "fromText: Unknown country code:" ++ T.unpack c

-- | Get the code as text.
toText :: CountryCode -> T.Text
toText AD = "AD"
toText AE = "AE"
toText AF = "AF"
toText AG = "AG"
toText AI = "AI"
toText AL = "AL"
toText AM = "AM"
toText AO = "AO"
toText AQ = "AQ"
toText AR = "AR"
toText AS = "AS"
toText AT = "AT"
toText AU = "AU"
toText AW = "AW"
toText AX = "AX"
toText AZ = "AZ"
toText BA = "BA"
toText BB = "BB"
toText BD = "BD"
toText BE = "BE"
toText BF = "BF"
toText BG = "BG"
toText BH = "BH"
toText BI = "BI"
toText BJ = "BJ"
toText BL = "BL"
toText BM = "BM"
toText BN = "BN"
toText BO = "BO"
toText BQ = "BQ"
toText BR = "BR"
toText BS = "BS"
toText BT = "BT"
toText BV = "BV"
toText BW = "BW"
toText BY = "BY"
toText BZ = "BZ"
toText CA = "CA"
toText CC = "CC"
toText CD = "CD"
toText CF = "CF"
toText CG = "CG"
toText CH = "CH"
toText CI = "CI"
toText CK = "CK"
toText CL = "CL"
toText CM = "CM"
toText CN = "CN"
toText CO = "CO"
toText CR = "CR"
toText CU = "CU"
toText CV = "CV"
toText CW = "CW"
toText CX = "CX"
toText CY = "CY"
toText CZ = "CZ"
toText DE = "DE"
toText DJ = "DJ"
toText DK = "DK"
toText DM = "DM"
toText DO = "DO"
toText DZ = "DZ"
toText EC = "EC"
toText EE = "EE"
toText EG = "EG"
toText EH = "EH"
toText ER = "ER"
toText ES = "ES"
toText ET = "ET"
toText FI = "FI"
toText FJ = "FJ"
toText FK = "FK"
toText FM = "FM"
toText FO = "FO"
toText FR = "FR"
toText GA = "GA"
toText GB = "GB"
toText GD = "GD"
toText GE = "GE"
toText GF = "GF"
toText GG = "GG"
toText GH = "GH"
toText GI = "GI"
toText GL = "GL"
toText GM = "GM"
toText GN = "GN"
toText GP = "GP"
toText GQ = "GQ"
toText GR = "GR"
toText GS = "GS"
toText GT = "GT"
toText GU = "GU"
toText GW = "GW"
toText GY = "GY"
toText HK = "HK"
toText HM = "HM"
toText HN = "HN"
toText HR = "HR"
toText HT = "HT"
toText HU = "HU"
toText ID = "ID"
toText IE = "IE"
toText IL = "IL"
toText IM = "IM"
toText IN = "IN"
toText IO = "IO"
toText IQ = "IQ"
toText IR = "IR"
toText IS = "IS"
toText IT = "IT"
toText JE = "JE"
toText JM = "JM"
toText JO = "JO"
toText JP = "JP"
toText KE = "KE"
toText KG = "KG"
toText KH = "KH"
toText KI = "KI"
toText KM = "KM"
toText KN = "KN"
toText KP = "KP"
toText KR = "KR"
toText KW = "KW"
toText KY = "KY"
toText KZ = "KZ"
toText LA = "LA"
toText LB = "LB"
toText LC = "LC"
toText LI = "LI"
toText LK = "LK"
toText LR = "LR"
toText LS = "LS"
toText LT = "LT"
toText LU = "LU"
toText LV = "LV"
toText LY = "LY"
toText MA = "MA"
toText MC = "MC"
toText MD = "MD"
toText ME = "ME"
toText MF = "MF"
toText MG = "MG"
toText MH = "MH"
toText MK = "MK"
toText ML = "ML"
toText MM = "MM"
toText MN = "MN"
toText MO = "MO"
toText MP = "MP"
toText MQ = "MQ"
toText MR = "MR"
toText MS = "MS"
toText MT = "MT"
toText MU = "MU"
toText MV = "MV"
toText MW = "MW"
toText MX = "MX"
toText MY = "MY"
toText MZ = "MZ"
toText NA = "NA"
toText NC = "NC"
toText NE = "NE"
toText NF = "NF"
toText NG = "NG"
toText NI = "NI"
toText NL = "NL"
toText NO = "NO"
toText NP = "NP"
toText NR = "NR"
toText NU = "NU"
toText NZ = "NZ"
toText OM = "OM"
toText PA = "PA"
toText PE = "PE"
toText PF = "PF"
toText PG = "PG"
toText PH = "PH"
toText PK = "PK"
toText PL = "PL"
toText PM = "PM"
toText PN = "PN"
toText PR = "PR"
toText PS = "PS"
toText PT = "PT"
toText PW = "PW"
toText PY = "PY"
toText QA = "QA"
toText RE = "RE"
toText RO = "RO"
toText RS = "RS"
toText RU = "RU"
toText RW = "RW"
toText SA = "SA"
toText SB = "SB"
toText SC = "SC"
toText SD = "SD"
toText SE = "SE"
toText SG = "SG"
toText SH = "SH"
toText SI = "SI"
toText SJ = "SJ"
toText SK = "SK"
toText SL = "SL"
toText SM = "SM"
toText SN = "SN"
toText SO = "SO"
toText SR = "SR"
toText SS = "SS"
toText ST = "ST"
toText SV = "SV"
toText SX = "SX"
toText SY = "SY"
toText SZ = "SZ"
toText TC = "TC"
toText TD = "TD"
toText TF = "TF"
toText TG = "TG"
toText TH = "TH"
toText TJ = "TJ"
toText TK = "TK"
toText TL = "TL"
toText TM = "TM"
toText TN = "TN"
toText TO = "TO"
toText TR = "TR"
toText TT = "TT"
toText TV = "TV"
toText TW = "TW"
toText TZ = "TZ"
toText UA = "UA"
toText UG = "UG"
toText UM = "UM"
toText US = "US"
toText UY = "UY"
toText UZ = "UZ"
toText VA = "VA"
toText VC = "VC"
toText VE = "VE"
toText VG = "VG"
toText VI = "VI"
toText VN = "VN"
toText VU = "VU"
toText WF = "WF"
toText WS = "WS"
toText YE = "YE"
toText YT = "YT"
toText ZA = "ZA"
toText ZM = "ZM"
toText ZW = "ZW"

-- | Maybe get the code from the user readable name.
fromMName :: T.Text -> Maybe CountryCode
fromMName "Andorra" = Just AD
fromMName "United Arab Emirates" = Just AE
fromMName "Afghanistan" = Just AF
fromMName "Antigua and Barbuda" = Just AG
fromMName "Anguilla" = Just AI
fromMName "Albania" = Just AL
fromMName "Armenia" = Just AM
fromMName "Angola" = Just AO
fromMName "Antarctica" = Just AQ
fromMName "Argentina" = Just AR
fromMName "American Samoa" = Just AS
fromMName "Austria" = Just AT
fromMName "Australia" = Just AU
fromMName "Aruba" = Just AW
fromMName "Åland Islands" = Just AX
fromMName "Azerbaijan" = Just AZ
fromMName "Bosnia and Herzegovina" = Just BA
fromMName "Barbados" = Just BB
fromMName "Bangladesh" = Just BD
fromMName "Belgium" = Just BE
fromMName "Burkina Faso" = Just BF
fromMName "Bulgaria" = Just BG
fromMName "Bahrain" = Just BH
fromMName "Burundi" = Just BI
fromMName "Benin" = Just BJ
fromMName "Saint Barthélemy" = Just BL
fromMName "Bermuda" = Just BM
fromMName "Brunei" = Just BN
fromMName "Bolivia" = Just BO
fromMName "Caribbean Netherlands" = Just BQ
fromMName "Brazil" = Just BR
fromMName "The Bahamas" = Just BS
fromMName "Bhutan" = Just BT
fromMName "Bouvet Island" = Just BV
fromMName "Botswana" = Just BW
fromMName "Belarus" = Just BY
fromMName "Belize" = Just BZ
fromMName "Canada" = Just CA
fromMName "Cocos (Keeling) Islands" = Just CC
fromMName "Democratic Republic of the Congo" = Just CD
fromMName "Central African Republic" = Just CF
fromMName "Republic of the Congo" = Just CG
fromMName "Switzerland" = Just CH
fromMName "Côte d'Ivoire" = Just CI
fromMName "Cook Islands" = Just CK
fromMName "Chile" = Just CL
fromMName "Cameroon" = Just CM
fromMName "China" = Just CN
fromMName "Colombia" = Just CO
fromMName "Costa Rica" = Just CR
fromMName "Cuba" = Just CU
fromMName "Cape Verde" = Just CV
fromMName "Curaçao" = Just CW
fromMName "Christmas Island" = Just CX
fromMName "Cyprus" = Just CY
fromMName "Czech Republic" = Just CZ
fromMName "Germany" = Just DE
fromMName "Djibouti" = Just DJ
fromMName "Denmark" = Just DK
fromMName "Dominica" = Just DM
fromMName "Dominican Republic" = Just DO
fromMName "Algeria" = Just DZ
fromMName "Ecuador" = Just EC
fromMName "Estonia" = Just EE
fromMName "Egypt" = Just EG
fromMName "Western Sahara" = Just EH
fromMName "Eritrea" = Just ER
fromMName "Spain" = Just ES
fromMName "Ethiopia" = Just ET
fromMName "Finland" = Just FI
fromMName "Fiji" = Just FJ
fromMName "Falkland Islands" = Just FK
fromMName "Federated States of Micronesia" = Just FM
fromMName "Faroe Islands" = Just FO
fromMName "France" = Just FR
fromMName "Gabon" = Just GA
fromMName "United Kingdom" = Just GB
fromMName "Grenada" = Just GD
fromMName "Georgia (country)" = Just GE
fromMName "French Guiana" = Just GF
fromMName "Guernsey" = Just GG
fromMName "Ghana" = Just GH
fromMName "Gibraltar" = Just GI
fromMName "Greenland" = Just GL
fromMName "The Gambia" = Just GM
fromMName "Guinea" = Just GN
fromMName "Guadeloupe" = Just GP
fromMName "Equatorial Guinea" = Just GQ
fromMName "Greece" = Just GR
fromMName "South Georgia and the South Sandwich Islands" = Just GS
fromMName "Guatemala" = Just GT
fromMName "Guam" = Just GU
fromMName "Guinea-Bissau" = Just GW
fromMName "Guyana" = Just GY
fromMName "Hong Kong" = Just HK
fromMName "Heard Island and McDonald Islands" = Just HM
fromMName "Honduras" = Just HN
fromMName "Croatia" = Just HR
fromMName "Haiti" = Just HT
fromMName "Hungary" = Just HU
fromMName "Indonesia" = Just ID
fromMName "Republic of Ireland" = Just IE
fromMName "Israel" = Just IL
fromMName "Isle of Man" = Just IM
fromMName "India" = Just IN
fromMName "British Indian Ocean Territory" = Just IO
fromMName "Iraq" = Just IQ
fromMName "Iran" = Just IR
fromMName "Iceland" = Just IS
fromMName "Italy" = Just IT
fromMName "Jersey" = Just JE
fromMName "Jamaica" = Just JM
fromMName "Jordan" = Just JO
fromMName "Japan" = Just JP
fromMName "Kenya" = Just KE
fromMName "Kyrgyzstan" = Just KG
fromMName "Cambodia" = Just KH
fromMName "Kiribati" = Just KI
fromMName "Comoros" = Just KM
fromMName "Saint Kitts and Nevis" = Just KN
fromMName "North Korea" = Just KP
fromMName "South Korea" = Just KR
fromMName "Kuwait" = Just KW
fromMName "Cayman Islands" = Just KY
fromMName "Kazakhstan" = Just KZ
fromMName "Laos" = Just LA
fromMName "Lebanon" = Just LB
fromMName "Saint Lucia" = Just LC
fromMName "Liechtenstein" = Just LI
fromMName "Sri Lanka" = Just LK
fromMName "Liberia" = Just LR
fromMName "Lesotho" = Just LS
fromMName "Lithuania" = Just LT
fromMName "Luxembourg" = Just LU
fromMName "Latvia" = Just LV
fromMName "Libya" = Just LY
fromMName "Morocco" = Just MA
fromMName "Monaco" = Just MC
fromMName "Moldova" = Just MD
fromMName "Montenegro" = Just ME
fromMName "Collectivity of Saint Martin" = Just MF
fromMName "Madagascar" = Just MG
fromMName "Marshall Islands" = Just MH
fromMName "Republic of Macedonia" = Just MK
fromMName "Mali" = Just ML
fromMName "Myanmar" = Just MM
fromMName "Mongolia" = Just MN
fromMName "Macau" = Just MO
fromMName "Northern Mariana Islands" = Just MP
fromMName "Martinique" = Just MQ
fromMName "Mauritania" = Just MR
fromMName "Montserrat" = Just MS
fromMName "Malta" = Just MT
fromMName "Mauritius" = Just MU
fromMName "Maldives" = Just MV
fromMName "Malawi" = Just MW
fromMName "Mexico" = Just MX
fromMName "Malaysia" = Just MY
fromMName "Mozambique" = Just MZ
fromMName "Namibia" = Just NA
fromMName "New Caledonia" = Just NC
fromMName "Niger" = Just NE
fromMName "Norfolk Island" = Just NF
fromMName "Nigeria" = Just NG
fromMName "Nicaragua" = Just NI
fromMName "Netherlands" = Just NL
fromMName "Norway" = Just NO
fromMName "Nepal" = Just NP
fromMName "Nauru" = Just NR
fromMName "Niue" = Just NU
fromMName "New Zealand" = Just NZ
fromMName "Oman" = Just OM
fromMName "Panama" = Just PA
fromMName "Peru" = Just PE
fromMName "French Polynesia" = Just PF
fromMName "Papua New Guinea" = Just PG
fromMName "Philippines" = Just PH
fromMName "Pakistan" = Just PK
fromMName "Poland" = Just PL
fromMName "Saint Pierre and Miquelon" = Just PM
fromMName "Pitcairn Islands" = Just PN
fromMName "Puerto Rico" = Just PR
fromMName "State of Palestine" = Just PS
fromMName "Portugal" = Just PT
fromMName "Palau" = Just PW
fromMName "Paraguay" = Just PY
fromMName "Qatar" = Just QA
fromMName "Réunion" = Just RE
fromMName "Romania" = Just RO
fromMName "Serbia" = Just RS
fromMName "Russia" = Just RU
fromMName "Rwanda" = Just RW
fromMName "Saudi Arabia" = Just SA
fromMName "Solomon Islands" = Just SB
fromMName "Seychelles" = Just SC
fromMName "Sudan" = Just SD
fromMName "Sweden" = Just SE
fromMName "Singapore" = Just SG
fromMName "Saint Helena, Ascension and Tristan da Cunha" = Just SH
fromMName "Slovenia" = Just SI
fromMName "Svalbard and Jan Mayen" = Just SJ
fromMName "Slovakia" = Just SK
fromMName "Sierra Leone" = Just SL
fromMName "San Marino" = Just SM
fromMName "Senegal" = Just SN
fromMName "Somalia" = Just SO
fromMName "Suriname" = Just SR
fromMName "South Sudan" = Just SS
fromMName "São Tomé and Príncipe" = Just ST
fromMName "El Salvador" = Just SV
fromMName "Sint Maarten" = Just SX
fromMName "Syria" = Just SY
fromMName "Swaziland" = Just SZ
fromMName "Turks and Caicos Islands" = Just TC
fromMName "Chad" = Just TD
fromMName "French Southern and Antarctic Lands" = Just TF
fromMName "Togo" = Just TG
fromMName "Thailand" = Just TH
fromMName "Tajikistan" = Just TJ
fromMName "Tokelau" = Just TK
fromMName "East Timor" = Just TL
fromMName "Turkmenistan" = Just TM
fromMName "Tunisia" = Just TN
fromMName "Tonga" = Just TO
fromMName "Turkey" = Just TR
fromMName "Trinidad and Tobago" = Just TT
fromMName "Tuvalu" = Just TV
fromMName "Taiwan" = Just TW
fromMName "Tanzania" = Just TZ
fromMName "Ukraine" = Just UA
fromMName "Uganda" = Just UG
fromMName "United States Minor Outlying Islands" = Just UM
fromMName "United States" = Just US
fromMName "Uruguay" = Just UY
fromMName "Uzbekistan" = Just UZ
fromMName "Vatican City" = Just VA
fromMName "Saint Vincent and the Grenadines" = Just VC
fromMName "Venezuela" = Just VE
fromMName "British Virgin Islands" = Just VG
fromMName "United States Virgin Islands" = Just VI
fromMName "Vietnam" = Just VN
fromMName "Vanuatu" = Just VU
fromMName "Wallis and Futuna" = Just WF
fromMName "Samoa" = Just WS
fromMName "Yemen" = Just YE
fromMName "Mayotte" = Just YT
fromMName "South Africa" = Just ZA
fromMName "Zambia" = Just ZM
fromMName "Zimbabwe" = Just ZW
fromMName _    = Nothing

-- | Get the CountryCode from the user readable name. Errors if the name is unknown
fromName:: T.Text -> CountryCode
fromName c = case fromMName c of
               Just cc -> cc
               _       -> error $ "fromName: Unknown country code:" ++ T.unpack c

-- | Get the user readable name.
toName :: CountryCode -> T.Text
toName AD = "Andorra"
toName AE = "United Arab Emirates"
toName AF = "Afghanistan"
toName AG = "Antigua and Barbuda"
toName AI = "Anguilla"
toName AL = "Albania"
toName AM = "Armenia"
toName AO = "Angola"
toName AQ = "Antarctica"
toName AR = "Argentina"
toName AS = "American Samoa"
toName AT = "Austria"
toName AU = "Australia"
toName AW = "Aruba"
toName AX = "Åland Islands"
toName AZ = "Azerbaijan"
toName BA = "Bosnia and Herzegovina"
toName BB = "Barbados"
toName BD = "Bangladesh"
toName BE = "Belgium"
toName BF = "Burkina Faso"
toName BG = "Bulgaria"
toName BH = "Bahrain"
toName BI = "Burundi"
toName BJ = "Benin"
toName BL = "Saint Barthélemy"
toName BM = "Bermuda"
toName BN = "Brunei"
toName BO = "Bolivia"
toName BQ = "Caribbean Netherlands"
toName BR = "Brazil"
toName BS = "The Bahamas"
toName BT = "Bhutan"
toName BV = "Bouvet Island"
toName BW = "Botswana"
toName BY = "Belarus"
toName BZ = "Belize"
toName CA = "Canada"
toName CC = "Cocos (Keeling) Islands"
toName CD = "Democratic Republic of the Congo"
toName CF = "Central African Republic"
toName CG = "Republic of the Congo"
toName CH = "Switzerland"
toName CI = "Côte d'Ivoire"
toName CK = "Cook Islands"
toName CL = "Chile"
toName CM = "Cameroon"
toName CN = "China"
toName CO = "Colombia"
toName CR = "Costa Rica"
toName CU = "Cuba"
toName CV = "Cape Verde"
toName CW = "Curaçao"
toName CX = "Christmas Island"
toName CY = "Cyprus"
toName CZ = "Czech Republic"
toName DE = "Germany"
toName DJ = "Djibouti"
toName DK = "Denmark"
toName DM = "Dominica"
toName DO = "Dominican Republic"
toName DZ = "Algeria"
toName EC = "Ecuador"
toName EE = "Estonia"
toName EG = "Egypt"
toName EH = "Western Sahara"
toName ER = "Eritrea"
toName ES = "Spain"
toName ET = "Ethiopia"
toName FI = "Finland"
toName FJ = "Fiji"
toName FK = "Falkland Islands"
toName FM = "Federated States of Micronesia"
toName FO = "Faroe Islands"
toName FR = "France"
toName GA = "Gabon"
toName GB = "United Kingdom"
toName GD = "Grenada"
toName GE = "Georgia (country)"
toName GF = "French Guiana"
toName GG = "Guernsey"
toName GH = "Ghana"
toName GI = "Gibraltar"
toName GL = "Greenland"
toName GM = "The Gambia"
toName GN = "Guinea"
toName GP = "Guadeloupe"
toName GQ = "Equatorial Guinea"
toName GR = "Greece"
toName GS = "South Georgia and the South Sandwich Islands"
toName GT = "Guatemala"
toName GU = "Guam"
toName GW = "Guinea-Bissau"
toName GY = "Guyana"
toName HK = "Hong Kong"
toName HM = "Heard Island and McDonald Islands"
toName HN = "Honduras"
toName HR = "Croatia"
toName HT = "Haiti"
toName HU = "Hungary"
toName ID = "Indonesia"
toName IE = "Republic of Ireland"
toName IL = "Israel"
toName IM = "Isle of Man"
toName IN = "India"
toName IO = "British Indian Ocean Territory"
toName IQ = "Iraq"
toName IR = "Iran"
toName IS = "Iceland"
toName IT = "Italy"
toName JE = "Jersey"
toName JM = "Jamaica"
toName JO = "Jordan"
toName JP = "Japan"
toName KE = "Kenya"
toName KG = "Kyrgyzstan"
toName KH = "Cambodia"
toName KI = "Kiribati"
toName KM = "Comoros"
toName KN = "Saint Kitts and Nevis"
toName KP = "North Korea"
toName KR = "South Korea"
toName KW = "Kuwait"
toName KY = "Cayman Islands"
toName KZ = "Kazakhstan"
toName LA = "Laos"
toName LB = "Lebanon"
toName LC = "Saint Lucia"
toName LI = "Liechtenstein"
toName LK = "Sri Lanka"
toName LR = "Liberia"
toName LS = "Lesotho"
toName LT = "Lithuania"
toName LU = "Luxembourg"
toName LV = "Latvia"
toName LY = "Libya"
toName MA = "Morocco"
toName MC = "Monaco"
toName MD = "Moldova"
toName ME = "Montenegro"
toName MF = "Collectivity of Saint Martin"
toName MG = "Madagascar"
toName MH = "Marshall Islands"
toName MK = "Republic of Macedonia"
toName ML = "Mali"
toName MM = "Myanmar"
toName MN = "Mongolia"
toName MO = "Macau"
toName MP = "Northern Mariana Islands"
toName MQ = "Martinique"
toName MR = "Mauritania"
toName MS = "Montserrat"
toName MT = "Malta"
toName MU = "Mauritius"
toName MV = "Maldives"
toName MW = "Malawi"
toName MX = "Mexico"
toName MY = "Malaysia"
toName MZ = "Mozambique"
toName NA = "Namibia"
toName NC = "New Caledonia"
toName NE = "Niger"
toName NF = "Norfolk Island"
toName NG = "Nigeria"
toName NI = "Nicaragua"
toName NL = "Netherlands"
toName NO = "Norway"
toName NP = "Nepal"
toName NR = "Nauru"
toName NU = "Niue"
toName NZ = "New Zealand"
toName OM = "Oman"
toName PA = "Panama"
toName PE = "Peru"
toName PF = "French Polynesia"
toName PG = "Papua New Guinea"
toName PH = "Philippines"
toName PK = "Pakistan"
toName PL = "Poland"
toName PM = "Saint Pierre and Miquelon"
toName PN = "Pitcairn Islands"
toName PR = "Puerto Rico"
toName PS = "State of Palestine"
toName PT = "Portugal"
toName PW = "Palau"
toName PY = "Paraguay"
toName QA = "Qatar"
toName RE = "Réunion"
toName RO = "Romania"
toName RS = "Serbia"
toName RU = "Russia"
toName RW = "Rwanda"
toName SA = "Saudi Arabia"
toName SB = "Solomon Islands"
toName SC = "Seychelles"
toName SD = "Sudan"
toName SE = "Sweden"
toName SG = "Singapore"
toName SH = "Saint Helena, Ascension and Tristan da Cunha"
toName SI = "Slovenia"
toName SJ = "Svalbard and Jan Mayen"
toName SK = "Slovakia"
toName SL = "Sierra Leone"
toName SM = "San Marino"
toName SN = "Senegal"
toName SO = "Somalia"
toName SR = "Suriname"
toName SS = "South Sudan"
toName ST = "São Tomé and Príncipe"
toName SV = "El Salvador"
toName SX = "Sint Maarten"
toName SY = "Syria"
toName SZ = "Swaziland"
toName TC = "Turks and Caicos Islands"
toName TD = "Chad"
toName TF = "French Southern and Antarctic Lands"
toName TG = "Togo"
toName TH = "Thailand"
toName TJ = "Tajikistan"
toName TK = "Tokelau"
toName TL = "East Timor"
toName TM = "Turkmenistan"
toName TN = "Tunisia"
toName TO = "Tonga"
toName TR = "Turkey"
toName TT = "Trinidad and Tobago"
toName TV = "Tuvalu"
toName TW = "Taiwan"
toName TZ = "Tanzania"
toName UA = "Ukraine"
toName UG = "Uganda"
toName UM = "United States Minor Outlying Islands"
toName US = "United States"
toName UY = "Uruguay"
toName UZ = "Uzbekistan"
toName VA = "Vatican City"
toName VC = "Saint Vincent and the Grenadines"
toName VE = "Venezuela"
toName VG = "British Virgin Islands"
toName VI = "United States Virgin Islands"
toName VN = "Vietnam"
toName VU = "Vanuatu"
toName WF = "Wallis and Futuna"
toName WS = "Samoa"
toName YE = "Yemen"
toName YT = "Mayotte"
toName ZA = "South Africa"
toName ZM = "Zambia"
toName ZW = "Zimbabwe"

-- | list of names sorted by alphabetical order, with country code
-- this is ready to be used in a yesod selectField, for example
countryList :: [(T.Text,CountryCode)]
countryList = [("Afghanistan",AF)
              ,("Albania",AL)
              ,("Algeria",DZ)
              ,("American Samoa",AS)
              ,("Andorra",AD)
              ,("Angola",AO)
              ,("Anguilla",AI)
              ,("Antarctica",AQ)
              ,("Antigua and Barbuda",AG)
              ,("Argentina",AR)
              ,("Armenia",AM)
              ,("Aruba",AW)
              ,("Australia",AU)
              ,("Austria",AT)
              ,("Azerbaijan",AZ)
              ,("Bahrain",BH)
              ,("Bangladesh",BD)
              ,("Barbados",BB)
              ,("Belarus",BY)
              ,("Belgium",BE)
              ,("Belize",BZ)
              ,("Benin",BJ)
              ,("Bermuda",BM)
              ,("Bhutan",BT)
              ,("Bolivia",BO)
              ,("Bosnia and Herzegovina",BA)
              ,("Botswana",BW)
              ,("Bouvet Island",BV)
              ,("Brazil",BR)
              ,("British Indian Ocean Territory",IO)
              ,("British Virgin Islands",VG)
              ,("Brunei",BN)
              ,("Bulgaria",BG)
              ,("Burkina Faso",BF)
              ,("Burundi",BI)
              ,("Cambodia",KH)
              ,("Cameroon",CM)
              ,("Canada",CA)
              ,("Cape Verde",CV)
              ,("Caribbean Netherlands",BQ)
              ,("Cayman Islands",KY)
              ,("Central African Republic",CF)
              ,("Chad",TD)
              ,("Chile",CL)
              ,("China",CN)
              ,("Christmas Island",CX)
              ,("Cocos (Keeling) Islands",CC)
              ,("Collectivity of Saint Martin",MF)
              ,("Colombia",CO)
              ,("Comoros",KM)
              ,("Cook Islands",CK)
              ,("Costa Rica",CR)
              ,("Croatia",HR)
              ,("Cuba",CU)
              ,("Curaçao",CW)
              ,("Cyprus",CY)
              ,("Czech Republic",CZ)
              ,("Côte d'Ivoire",CI)
              ,("Democratic Republic of the Congo",CD)
              ,("Denmark",DK)
              ,("Djibouti",DJ)
              ,("Dominica",DM)
              ,("Dominican Republic",DO)
              ,("East Timor",TL)
              ,("Ecuador",EC)
              ,("Egypt",EG)
              ,("El Salvador",SV)
              ,("Equatorial Guinea",GQ)
              ,("Eritrea",ER)
              ,("Estonia",EE)
              ,("Ethiopia",ET)
              ,("Falkland Islands",FK)
              ,("Faroe Islands",FO)
              ,("Federated States of Micronesia",FM)
              ,("Fiji",FJ)
              ,("Finland",FI)
              ,("France",FR)
              ,("French Guiana",GF)
              ,("French Polynesia",PF)
              ,("French Southern and Antarctic Lands",TF)
              ,("Gabon",GA)
              ,("Georgia (country)",GE)
              ,("Germany",DE)
              ,("Ghana",GH)
              ,("Gibraltar",GI)
              ,("Greece",GR)
              ,("Greenland",GL)
              ,("Grenada",GD)
              ,("Guadeloupe",GP)
              ,("Guam",GU)
              ,("Guatemala",GT)
              ,("Guernsey",GG)
              ,("Guinea",GN)
              ,("Guinea-Bissau",GW)
              ,("Guyana",GY)
              ,("Haiti",HT)
              ,("Heard Island and McDonald Islands",HM)
              ,("Honduras",HN)
              ,("Hong Kong",HK)
              ,("Hungary",HU)
              ,("Iceland",IS)
              ,("India",IN)
              ,("Indonesia",ID)
              ,("Iran",IR)
              ,("Iraq",IQ)
              ,("Isle of Man",IM)
              ,("Israel",IL)
              ,("Italy",IT)
              ,("Jamaica",JM)
              ,("Japan",JP)
              ,("Jersey",JE)
              ,("Jordan",JO)
              ,("Kazakhstan",KZ)
              ,("Kenya",KE)
              ,("Kiribati",KI)
              ,("Kuwait",KW)
              ,("Kyrgyzstan",KG)
              ,("Laos",LA)
              ,("Latvia",LV)
              ,("Lebanon",LB)
              ,("Lesotho",LS)
              ,("Liberia",LR)
              ,("Libya",LY)
              ,("Liechtenstein",LI)
              ,("Lithuania",LT)
              ,("Luxembourg",LU)
              ,("Macau",MO)
              ,("Madagascar",MG)
              ,("Malawi",MW)
              ,("Malaysia",MY)
              ,("Maldives",MV)
              ,("Mali",ML)
              ,("Malta",MT)
              ,("Marshall Islands",MH)
              ,("Martinique",MQ)
              ,("Mauritania",MR)
              ,("Mauritius",MU)
              ,("Mayotte",YT)
              ,("Mexico",MX)
              ,("Moldova",MD)
              ,("Monaco",MC)
              ,("Mongolia",MN)
              ,("Montenegro",ME)
              ,("Montserrat",MS)
              ,("Morocco",MA)
              ,("Mozambique",MZ)
              ,("Myanmar",MM)
              ,("Namibia",NA)
              ,("Nauru",NR)
              ,("Nepal",NP)
              ,("Netherlands",NL)
              ,("New Caledonia",NC)
              ,("New Zealand",NZ)
              ,("Nicaragua",NI)
              ,("Niger",NE)
              ,("Nigeria",NG)
              ,("Niue",NU)
              ,("Norfolk Island",NF)
              ,("North Korea",KP)
              ,("Northern Mariana Islands",MP)
              ,("Norway",NO)
              ,("Oman",OM)
              ,("Pakistan",PK)
              ,("Palau",PW)
              ,("Panama",PA)
              ,("Papua New Guinea",PG)
              ,("Paraguay",PY)
              ,("Peru",PE)
              ,("Philippines",PH)
              ,("Pitcairn Islands",PN)
              ,("Poland",PL)
              ,("Portugal",PT)
              ,("Puerto Rico",PR)
              ,("Qatar",QA)
              ,("Republic of Ireland",IE)
              ,("Republic of Macedonia",MK)
              ,("Republic of the Congo",CG)
              ,("Romania",RO)
              ,("Russia",RU)
              ,("Rwanda",RW)
              ,("Réunion",RE)
              ,("Saint Barthélemy",BL)
              ,("Saint Helena, Ascension and Tristan da Cunha",SH)
              ,("Saint Kitts and Nevis",KN)
              ,("Saint Lucia",LC)
              ,("Saint Pierre and Miquelon",PM)
              ,("Saint Vincent and the Grenadines",VC)
              ,("Samoa",WS)
              ,("San Marino",SM)
              ,("Saudi Arabia",SA)
              ,("Senegal",SN)
              ,("Serbia",RS)
              ,("Seychelles",SC)
              ,("Sierra Leone",SL)
              ,("Singapore",SG)
              ,("Sint Maarten",SX)
              ,("Slovakia",SK)
              ,("Slovenia",SI)
              ,("Solomon Islands",SB)
              ,("Somalia",SO)
              ,("South Africa",ZA)
              ,("South Georgia and the South Sandwich Islands",GS)
              ,("South Korea",KR)
              ,("South Sudan",SS)
              ,("Spain",ES)
              ,("Sri Lanka",LK)
              ,("State of Palestine",PS)
              ,("Sudan",SD)
              ,("Suriname",SR)
              ,("Svalbard and Jan Mayen",SJ)
              ,("Swaziland",SZ)
              ,("Sweden",SE)
              ,("Switzerland",CH)
              ,("Syria",SY)
              ,("São Tomé and Príncipe",ST)
              ,("Taiwan",TW)
              ,("Tajikistan",TJ)
              ,("Tanzania",TZ)
              ,("Thailand",TH)
              ,("The Bahamas",BS)
              ,("The Gambia",GM)
              ,("Togo",TG)
              ,("Tokelau",TK)
              ,("Tonga",TO)
              ,("Trinidad and Tobago",TT)
              ,("Tunisia",TN)
              ,("Turkey",TR)
              ,("Turkmenistan",TM)
              ,("Turks and Caicos Islands",TC)
              ,("Tuvalu",TV)
              ,("Uganda",UG)
              ,("Ukraine",UA)
              ,("United Arab Emirates",AE)
              ,("United Kingdom",GB)
              ,("United States",US)
              ,("United States Minor Outlying Islands",UM)
              ,("United States Virgin Islands",VI)
              ,("Uruguay",UY)
              ,("Uzbekistan",UZ)
              ,("Vanuatu",VU)
              ,("Vatican City",VA)
              ,("Venezuela",VE)
              ,("Vietnam",VN)
              ,("Wallis and Futuna",WF)
              ,("Western Sahara",EH)
              ,("Yemen",YE)
              ,("Zambia",ZM)
              ,("Zimbabwe",ZW)
              ,("Åland Islands",AX)              ]

-- | to json: as a simple string
instance ToJSON CountryCode where
  toJSON =toJSON . toText

-- | from json: as a simple string
instance FromJSON CountryCode where
  parseJSON (String s)
    | Just a <- fromMText s=pure a
  parseJSON _ =fail "CountryCode"

-- | show user readable name, in English (ignoring locale for now)
instance RenderMessage master CountryCode where
  renderMessage _ _ = toName

-- | Allow the deep evaluation of CountryCode with `deepseq`
instance NFData CountryCode where
  rnf a = a `seq` ()
