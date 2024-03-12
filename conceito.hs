module Main where

import System.IO (hSetBuffering, stdout, BufferMode(NoBuffering))

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering
    putStr "Digite a nota do trabalho de laboratório ...:"
    laboratorio <- readLn
    putStr "Digite a nota da avaliação semestral ...:"
    semestral <- readLn
    putStr "Digite a nota do exame final ...:"
    final <- readLn
    putStrLn ""
    putStr "Conceito obtido: "
    let conceitoObtido = conceito laboratorio semestral final
    putStrLn [conceitoObtido]

conceito :: Float -> Float -> Float -> Char
conceito a b c
    | media_ponderada > 8.0 && media_ponderada <= 10.0 = 'A'
    | media_ponderada > 7.0 && media_ponderada <= 8.0 = 'B'
    | media_ponderada > 6.0 && media_ponderada <= 7.0 = 'C'
    | media_ponderada > 5.0 && media_ponderada <= 6.0 = 'D'
    | otherwise = 'E'
    where media_ponderada = (a * 2 + b * 3 + c * 5) / 10