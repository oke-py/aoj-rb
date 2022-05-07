# frozen_string_literal: true

RSpec.describe 'test' do
  it 'test with "5\n1 5 7 10 21\n4\n2 4 17 8\n"' do
    io = IO.popen('ruby alds1/05a.rb', 'w+')
    io.puts("5\n1 5 7 10 21\n4\n2 4 17 8\n")
    io.close_write
    expect(io.readlines.join).to eq("no\nno\nyes\nyes\n")
  end
end
