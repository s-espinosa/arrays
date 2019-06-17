require 'benchmark'
require './lib/reconciler'

r = Reconciler.new

n = 50_000
array_1 = (1..n).to_a
array_2 = (1..n).to_a

10_000.times do
  array_1.delete_at(rand(40_000))
  array_2.delete_at(rand(40_000))
end

Benchmark.bm do |x|
  x.report { r.reconcile_helper_1(array_1, array_2) }
  x.report { r.reconcile_helper_2(array_1, array_2) }
  x.report { r.reconcile_helper_3(array_1, array_2) }
end

n = 20
array_1 = (1..n).to_a
array_2 = (1..n).to_a

5.times do
  array_1.delete_at(rand(15))
  array_2.delete_at(rand(15))
end

puts r.reconcile_helper_1(array_1, array_2)
puts r.reconcile_helper_2(array_1, array_2)
puts r.reconcile_helper_3(array_1, array_2)

