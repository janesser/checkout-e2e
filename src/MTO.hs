module MTO where

data Cart = Cart { cartId :: String
                 , entries :: [CartEntry]
                 , total :: Rational
                 }

data CartEntry = CartEntry { cartEntryId :: String
                           , productId :: String
                           , productPrice :: Rational
                           , quantity :: Int
                           }

addToCart :: String -> Int -> CartEntry
addToCart aProductId aQuantity = CartEntry { cartEntryId = aProductId
                                         , productId = aProductId
                                         , productPrice = lookupPrice aProductId
                                         , quantity = aQuantity
                                         }

lookupPrice :: String -> Rational
lookupPrice _ = 123.45
  
