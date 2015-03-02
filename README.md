taggybench
==========

quick and dirty benchmarks of slurping links out of html.


output on my machine:

estimating clock resolution...
mean is 710.2115 ns (1280001 iterations)
found 3303 outliers among 1279999 samples (0.3%)
  3020 (0.2%) high severe
estimating cost of a clock call...
mean is 46.70560 ns (5 iterations)

benchmarking fullparse
mean: 4.057585 ms, lb 4.026600 ms, ub 4.091955 ms, ci 0.950
std dev: 167.1263 us, lb 145.6098 us, ub 197.7448 us, ci 0.950
variance introduced by outliers: 38.526%
variance is moderately inflated by outliers

benchmarking justTags
mean: 2.932764 ms, lb 2.912236 ms, ub 2.954188 ms, ci 0.950
std dev: 108.2263 us, lb 97.71261 us, ub 120.3575 us, ci 0.950
variance introduced by outliers: 33.594%
variance is moderately inflated by outliers

benchmarking uglyText
mean: 370.2729 us, lb 368.6838 us, ub 372.0765 us, ci 0.950
std dev: 8.722023 us, lb 7.394570 us, ub 10.68880 us, ci 0.950
found 3 outliers among 100 samples (3.0%)
  3 (3.0%) high mild
variance introduced by outliers: 17.088%
variance is moderately inflated by outliers
Benchmark bench: FINISH


