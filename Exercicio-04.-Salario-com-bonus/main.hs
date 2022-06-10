import Numeric
main = do
 s1 <- getLine
 s2 <- getLine
 let fixSalary = read s1 :: Float
 let totalSales = read s2 :: Float
 
 commission <- return $ (18/100) * totalSales
 totalSalary <- return $ fixSalary + commission
 putStrLn $ showFFloat (Just 2) totalSalary ""
