#!/usr/bin/ruby

# Analyse the character frequency of a string

unless ARGV.length == 1
  puts "usage: ./analyse_character_frequency $STRING"
  exit 1
end

string = ARGV[0]
frequency_table = {}

string.downcase.each_byte do |c|
  frequency_table[c.chr] = 0 if frequency_table[c.chr].nil?
  frequency_table[c.chr] += 1
end

puts "Character | Frequency"
puts "==========+=========="
frequency_table.sort{|a,b| b[1]<=>a[1]}.each do |key, value|
  puts "%s         | %d" % [key, value]
end