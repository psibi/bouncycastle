{-# LANGUAGE MagicHash #-}
{-# LANGUAGE FlexibleContexts#-}

module ThreeFishEngine where

import Java

-- Reference: https://www.bouncycastle.org/docs/docs1.5on/index.html

foreign import java unsafe "@static eta.bouncycastle.Utils.threeFishProcessBlock" threeFishProcessBlock :: Int64 -> Int64 -> Int64 -> Int64 -> IO JLongArray

foreign import java unsafe "@static java.lang.reflect.Array.getLong" getLong :: (Extends a Object) =>  a -> Int -> Int64




