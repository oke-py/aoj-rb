# frozen_string_literal: true

RSpec.describe 'test' do
  it 'test with "5\n1 2 3 4 5\n3\n3 4 1\n"' do
    io = IO.popen('ruby alds1/04b.rb', 'w+')
    io.puts("5\n1 2 3 4 5\n3\n3 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3\n1 2 3\n1\n5\n"' do
    io = IO.popen('ruby alds1/04b.rb', 'w+')
    io.puts("3\n1 2 3\n1\n5\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "5\n1 1 2 2 3\n2\n1 2\n"' do
    io = IO.popen('ruby alds1/04b.rb', 'w+')
    io.puts("5\n1 1 2 2 3\n2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end
end
