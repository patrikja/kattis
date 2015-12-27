
main = do
  n <- readLn
  if n == -1
     then return ()
     else do
        as <- mapM (const getLine) [1..n]
        putStrLn (sol (concatMap m as))
--this is in fact not correct, I need to save the sol thing and print it in the end, but I don't know how to do that.
        main

m :: String->[Int]
m as= map read (words as)

mmake :: String->[(Int,Int)]
mmake = make . m

make :: [Int]->[(Int,Int)]
make []     = []
make (a:as) = (a, head as) : make (drop 1 as)


sol :: [Int]->String
sol as = show (fix (make as)) ++ " miles"

fix :: [(Int,Int)]->Int
fix [] = 0
fix as = sum (map (swag as) [0.. length as -1])
   where swag as n | n==0      = fst (as!!n) * snd (as!!n)
                   | otherwise = fst (as!!n) * snd (as!!n) - snd (as!!(n-1))
-- TODO: this seems too complicated
