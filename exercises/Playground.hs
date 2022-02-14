module Playground  where

readInt :: String -> Either String Int
readInt "0" = Right 0
readInt "1" = Right 1
readInt s = Left ("Unsupported string: " ++ s)

iWantAString :: Either String  Int-> String
iWantAString (Left str)   = str
iWantAString (Right number) = show number

-- parse country code into country name, returns Nothing if code not recognized    
parseCountry :: String -> Maybe String
parseCountry "FI" = Just "Finland"
parseCountry "SE" = Just "Sweden"
parseCountry _ = Nothing
    
flyTo :: String -> String
flyTo countryCode = handleResult (parseCountry countryCode)
    where handleResult (Just country) = "You're flying to " ++ country
          handleResult Nothing        = "You're not flying anywhere"