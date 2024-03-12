-- Exercício 1
max3 :: Integer -> Integer -> Integer -> Integer
max3 a b c = if ((a >= b) &&(a>= c)) 
                then a
            else if ((b >= a) && (b>= c)) 
                then b
            else c

-- Exercício 2 

max3guard :: Integer -> Integer -> Integer -> Integer
max3guard a b c | a >= b && a >= c =  a
                | b >= a && b >= c = b
                | otherwise  = c