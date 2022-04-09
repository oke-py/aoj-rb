# frozen_string_literal: true

numbers = gets.chomp.split.map(&:to_i)
(0...(numbers.size)).each do |i|
  ((i + 1)...(numbers.size)).each do |j|
    numbers[i], numbers[j] = numbers[j], numbers[i] if numbers[i] > numbers[j]
  end
end
puts numbers.join(' ')
