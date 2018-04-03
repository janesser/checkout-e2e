module OTC ( PaymentMethod
           , isSecure
           -- re-export
           , Customer
           , Cart
           , Recipient
           , Creditor
           ) where

import CLM(Customer)
import MTO(Cart)
import FTD(Recipient, Creditor)

data PaymentMethod = CreditCard | Invoice
  deriving (Show, Enum)

isSecure :: PaymentMethod -> Bool
isSecure CreditCard = True
isSecure _ = False
