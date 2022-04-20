# frozen_string_literal: true

require 'set'

n = gets.to_i
a = gets.chomp.split.map(&:to_i)
gets
m = gets.chomp.split.map(&:to_i)

sums = Set.new
(1 << n).times do |bits|
  sum = 0
  n.times do |i|
    sum += a[i] if bits[i] != 0
  end
  sums.add(sum)
end

m.each do |v|
  puts sums.count(v).zero? ? 'no' : 'yes'
end
