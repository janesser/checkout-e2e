module OTC.RMS where

import OTC
import CLM(Customer)
import MTO(Cart)
import FTD(Recipient, Creditor)


score :: Customer -> Cart -> Recipient -> Maybe Creditor -> IO [PaymentMethod]
score _ _ _ _  = return $ filter isSecure $ enumFrom (toEnum 0)
