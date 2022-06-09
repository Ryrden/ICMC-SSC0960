import Numeric
main = do
        s1 <- getLine
        s2 <- getLine
        s3 <- getLine
        let a = read s1 :: Float
        let b = read s2 :: Float
        let c = read s3 :: Float
        delta <- return (b^2 - 4*a*c)
        if (delta < 0)
        then putStrLn "nan"
        else do x1 <- return ((-b - sqrt delta)/(2*a))
                x2 <- return ((-b + sqrt delta)/(2*a)) 
                putStrLn $ showFFloat (Just 2) (x1+x2) ""
