main = do
  s1 <- getLine
  s2 <- getLine
  let a = read s1 :: Integer
  let b = read s2 :: Integer
  let ans = mdc a b
  putStrLn $ show ans


mdc :: Integer -> Integer -> Integer
mdc a 0 = a
mdc a b = mdc b (a `mod` b)
