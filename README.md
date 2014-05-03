Benchmarking Standard Factorial Performance
-------------------------------------------
These are examples of factorial calculation in Ruby and Haskel along with benchmarking library examples in both languages.
The Haskel library Criterion has more details about the variance in the run time of the samples while the Ruby benchmark is better at describing "where" the calculations are taking place between the user program and the system that's running it.

Output
-------

Ruby Benchmarking output, the actual factorial is omitted, it has 973351 digits. The mean for 100 sample is 25.903264

```sh
Rehearsal
factorial 200000                                        16.750000   6.080000  22.830000 ( 22.834252) 

                                                            user     system      total        real
factorial 200000                                        17.520000   8.380000  25.900000 ( 25.903264)

```
Haskel Criterion.Main formatted output, the mean for 100 samples is 15.2578 seconds.

```
Output
```sh
warming up
estimating clock resolution...
mean is 996.9656 ns (640001 iterations)
found 1089158 outliers among 639999 samples (170.2%)
  500398 (78.2%) low severe
  588760 (92.0%) high severe
estimating cost of a clock call...
mean is 46.19977 ns (7 iterations)

benchmarking factorial/200000
collecting 100 samples, 1 iterations each, in estimated 1537.160 s
mean: 15.25718 s, lb 15.18397 s, ub 15.31565 s, ci 0.950
std dev: 334.0414 ms, lb 272.4759 ms, ub 400.1978 ms, ci 0.950
found 14 outliers among 100 samples (14.0%)
  12 (12.0%) low severe
  2 (2.0%) high mild
variance introduced by outliers: 15.166%
variance is moderately inflated by outliers
```

Libraries Used
--------------
A word about [Criterion.Main](http://hackage.haskell.org/package/criterion-0.5.0.10), this will be the benchmarking tool used to profil the Haskell performance  to download and then build. On MacOSX the charting library used by Criterion is not supported so ommit it when building 
```
cabal install criterion -f-chart
```

Ruby gem Benchmark should already be available with your Ruby distribution, if not run:
```sh
gem install benchmark
```


