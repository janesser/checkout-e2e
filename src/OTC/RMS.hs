module OTC.RMS where

import OTC

score :: Customer -> Cart -> Recipient -> Maybe Creditor -> IO [PaymentMethod]
score _ _ _ _  = return $ filter isSecure $ enumFrom (toEnum 0)
