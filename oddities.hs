import Data.Char
main = do
  n<-readLn
  as<-mapM (const getLine) [1..n]
  mapM putStrLn (sol as)
--får en skum sista rad, men de iggade den på kattis så det var ju lurre
  
sol::[String]->[String]
sol []=[]
sol (x:[])=(parity (read x):[])
sol (x:xs)=(parity (read x):[])++(sol xs)

parity::Int->String
parity x|mod x 2==0=(show x)++" is even"
        |otherwise =(show x)++" is odd"

--tochar works only for digits, show is the function I'm searching for
tochar::Int->Char
tochar x=chr (x+(ord '0'))
