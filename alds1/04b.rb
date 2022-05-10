# frozen_string_literal: true

def bsearch(list, target)
  head = 0
  tail = list.size - 1

  while head <= tail
    center = (head + tail) / 2
    return center if list[center] == target

    if list[center] < target
      head = center + 1
    else
      tail = center - 1
    end
  end

  nil
end

gets.to_i # n
S = gets.chomp.split.map(&:to_i)
gets.to_i # q
T = gets.chomp.split.map(&:to_i)
c = 0

T.each do |v|
  c += 1 if bsearch(S, v)
end

puts c
