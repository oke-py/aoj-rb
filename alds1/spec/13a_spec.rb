# frozen_string_literal: true

RSpec.describe 'test' do
  it 'test with "2\n2 2\n5 3\n"' do
    io = IO.popen('ruby alds1/13a.rb', 'w+')
    io.puts("2\n2 2\n5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("......Q.\nQ.......\n..Q.....\n.......Q\n.....Q..\n...Q....\n.Q......\n....Q...\n")
  end
end
