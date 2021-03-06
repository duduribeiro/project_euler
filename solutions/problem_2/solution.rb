def sum_even_fibonacci_numbers
  sum = 0
  first_item = 1
  second_item = 1
  third_item = first_item+second_item
  while third_item < 4000000
    sum += third_item
    first_item = second_item + third_item
    second_item = first_item + third_item
    third_item = first_item + second_item
  end
  sum
end

require './utils/ruby/benchmark'
ProjectEuller::RubyBenchmark.run { sum_even_fibonacci_numbers }