double x = x + x
quadruble x = double (double x)
factorial n = product [1..n]
average ns = sum ns `div` length ns
square_double x = double(x)^2 
triangle a b c = (a + b) > c && (a + c) > b && (b + c) > a

n = a `div` length xs
    where
        a = 10
        xs = [1,2,3,4,5]

last' ns = head(drop(length ns - 1) ns)
init' ns = take(length ns - 1) ns