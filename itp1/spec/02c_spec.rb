# frozen_string_literal: true

RSpec.describe 'test' do
  it 'test with "3 8 1\n"' do
    io = IO.popen('ruby itp1/02c.rb', 'w+')
    io.puts("3 8 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1 3 8\n")
  end
end
