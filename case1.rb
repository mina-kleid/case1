#!/usr/bin/env ruby
def count_bits(path=nil)
  zeros_count=0
  ones_count=0
  if path.nil?
    return "Please insert a path to the file"
  end

  begin
    contents= File.open(path, 'rb')  {|file| file.read}
  rescue
    return "File Not found, Please insert a correct file path"
  end

  contents.each_char do |c|
    if c.eql?('0')
      zeros_count = zeros_count +1
    elsif c.eql?('1')
      ones_count =ones_count +1
    end
  end
  puts "Found #{ones_count} bits set to 1"
  puts "Found #{zeros_count} bits set to 0"
end

