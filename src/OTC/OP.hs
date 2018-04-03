module OTC.OP where

import OTC

submitOrder :: Customer -> Recipient -> Creditor -> Cart -> PaymentMethod -> IO ()
submitOrder _ _ _ _ _ = do return ()
