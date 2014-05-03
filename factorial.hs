--http://hackage.haskell.org/package/criterion-0.5.0.10 
import Criterion.Main

factorial 0 = 1
factorial x = x * factorial (x-1)

main = defaultMain [
        bgroup "factorial" [ bench "200000" $ whnf factorial 200000
                    
                     ]
                    ]