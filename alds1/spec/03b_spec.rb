# frozen_string_literal: true

RSpec.describe 'test' do
  it 'test with "3\n5\n11\n7\n8\n19\n0\n"' do
    io = IO.popen('ruby alds1/03b.rb', 'w+')
    io.puts("3\n5\n11\n7\n8\n19\n0\n")
    io.close_write
    expect(io.readlines.join).to eq("Case 1: 3\nCase 2: 5\nCase 3: 11\nCase 4: 7\nCase 5: 8\nCase 6: 19\n")
  end
end
