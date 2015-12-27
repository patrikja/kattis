
main =do
  as<-mapM (const getLine) [1..5]
  putStrLn (sol as)

sol=unconvert . largest . convert

convert::[String]->[[Int]]
convert as=map (map read) (map words as)

unconvert::(Int,Int)->String
unconvert (a,b)=(show a)++" "++(show b)

largest::[[Int]]->(Int,Int)
largest []=(0,0)
largest (as:bs:cs:ds:es:[])|a>b && a>c && a>d && a>e=(1,a)
                           |b>a && b>c && b>d && b>e=(2,b)
                           |c>a && c>b && c>d && c>e=(3,c)
                           |d>a && d>b && d>c && d>e=(4,d)
                           |e>a && e>b && e>c && e>d=(5,e)
  where a=sum as
        b=sum bs
        c=sum cs
        d=sum ds
        e=sum es
