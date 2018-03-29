module FTD where

data Address = Address { name :: String
                       , street :: String
                       , houseNr :: String
                       , postalCode :: String
                       , city :: String
                       }

type Recipient = Address
type Creditor = Address

interpolate :: String -> String -> IO [Address]
interpolate aName addressStr = return $ [ Address { name = aName
                                                  , street = aStreet
                                                  , houseNr = aHouseNr
                                                  , postalCode = aPostalCode
                                                  , city = aCity
                                                  }
                                        ] where
  strArr = words addressStr
  aStreet = strArr !! 0
  aHouseNr = strArr !! 1
  aPostalCode = strArr !! 2
  aCity = strArr !! 3
