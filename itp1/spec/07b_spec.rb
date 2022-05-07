# frozen_string_literal: true

RSpec.describe 'test' do
  it 'test with "5 9\n0 0\n"' do
    io = IO.popen('ruby itp1/07b.rb', 'w+')
    io.puts("5 9\n0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "5 9\n5 9\n0 0\n"' do
    io = IO.popen('ruby itp1/07b.rb', 'w+')
    io.puts("5 9\n5 9\n0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n2\n")
  end
end
