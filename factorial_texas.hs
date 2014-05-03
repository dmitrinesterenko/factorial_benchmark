--http://hackage.haskell.org/package/criterion-0.5.0.10 
import Criterion.Main
-- calculate the factorial using a Texas 


main = defaultMain [
        bgroup "factorial" [ bench "200000" $ whnf product [1..200000]
                    
                     ]
                    ]