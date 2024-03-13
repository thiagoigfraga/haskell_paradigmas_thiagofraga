--casamento de padrões
casamento_padrao :: [Integer] -> Integer
casamento_padrao [x] = x
casamento_padrao (a:b:bs) = a + b
casamento_padrao [] = 0
--função anônima/lambda
imc = \x y -> x/y**2