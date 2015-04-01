#!/usr/bin/env ruby
require_relative 'xor_helper'

if ARGV.count < 2
  puts "Usage:  xor_defend [infile] [key]\n\n"
  exit
end

filename = ARGV[0]
key = ARGV[1]

begin
  file = File.read(filename)
  print XorHelper.encode(file, key)
rescue => e
  puts "Could not read file: #{e}"
end

## Example usage:
# ruby xor_defend.rb test.txt key > out.txt
# cat out.txt
# ruby xor_defend.rb out.txt key
