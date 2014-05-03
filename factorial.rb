require 'benchmark'

def factorial(n)
    arrn = 1.upto(n).inject(:*)
    arrn
end

Benchmark.bmbm(100) do |bm|
  bm.report('factorial 200000') do
    it = factorial(200000)
  end
end
