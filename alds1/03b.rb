# frozen_string_literal: true

10_000.times do |i|
  x = gets.to_i
  break if x.zero?

  puts "Case #{i + 1}: #{x}"
end
