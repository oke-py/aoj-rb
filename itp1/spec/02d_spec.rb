# frozen_string_literal: true

RSpec.describe 'test' do
  it 'test with "5 4 2 2 1\n"' do
    io = IO.popen('ruby itp1/02d.rb', 'w+')
    io.puts("5 4 2 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "5 4 2 4 1\n"' do
    io = IO.popen('ruby itp1/02d.rb', 'w+')
    io.puts("5 4 2 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end
end
