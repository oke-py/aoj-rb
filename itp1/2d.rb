# frozen_string_literal: true

w, h, x, y, r = gets.chomp.split.map(&:to_i)
puts((r <= x) && (r <= y) && (r <= (w - x)) && (r <= (h - y)) ? 'Yes' : 'No')
