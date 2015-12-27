main = do
  as <- getLine
  let w:rest = words as
      n = read w
  bs <- mapM (const getLine) [1..n]
  putStrLn (concat rest)

-- const skapar en konstant funktion, mapM; map och sequence
