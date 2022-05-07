# frozen_string_literal: true

loop do
  n, x = gets.chomp.split.map(&:to_i)
  break if n.zero? && x.zero?

  ans = 0

  (1..(n - 2)).each do |i|
    ((i + 1)..(n - 1)).each do |j|
      ((j + 1)..n).each do |k|
        ans += 1 if i + j + k == x
      end
    end
  end

  puts ans
end
