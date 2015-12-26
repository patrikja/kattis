main = do
  as<-getLine
  let n=read (head (words as))
  bs<-mapM (const getLine) [1..n]
  putStrLn (concat (drop 1 (words as)))

-- const skapar en konstant funktion, mapM; map och sequence
