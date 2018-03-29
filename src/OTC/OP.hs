module OTC.OP where

import OTC
import CLM(Customer)
import MTO(Cart)
import FTD(Recipient, Creditor)


submitOrder :: Customer -> Recipient -> Creditor -> Cart -> PaymentMethod -> IO ()
submitOrder _ _ _ _ _ = do return ()
