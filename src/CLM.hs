module CLM where

import Data.Maybe

data Customer = Customer { email :: String
                         , password :: Maybe String
                         }
               
isGuest :: Customer -> Bool
isGuest c = isNothing $ password c
