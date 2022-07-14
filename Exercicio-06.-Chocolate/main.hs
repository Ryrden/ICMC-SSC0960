main = do
 s1 <- getLine
 s2 <- getLine
 s3 <- getLine
 let n = read s1 :: Int
 let c = read s2 :: Int
 let m = read s3 :: Int
 
 print $ buyingChocolates n c m

buyingChocolates :: Int -> Int -> Int -> Int
buyingChocolates 0 c m
           | c   <   m = 0
           | otherwise = c `div` m + buyingChocolates 0 ((c `mod` m) + (c `div` m)) m 
buyingChocolates n c m = choco + buyingChocolates 0 choco m 
 where choco = n `div`c
