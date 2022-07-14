main = do
 s1 <- getLine
 let year = read s1 :: Int
 print $ leapYear year

leapYear :: Int -> Int
leapYear year
     | year <= 0 = -1
     | year `mod` 400 == 0 = 1
     | year `mod` 4 == 0 && year `mod` 100 /= 0 = 1
     | otherwise = 0
