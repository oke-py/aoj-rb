# frozen_string_literal: true

k = gets.to_i
q = []
k.times do
  q << gets.chomp.split.map(&:to_i)
end

[*0..7].permutation.each do |columns|
  next if q.any? do |r, c|
    columns[r] != c
  end

  ok = [*0..7].combination(2).all? do |r1, r2|
    (columns[r2] - columns[r1]).abs != r2 - r1
  end

  next unless ok

  columns.map! do |c|
    "#{'.' * c}Q#{'.' * (7 - c)}"
  end

  puts columns.join("\n")
end
