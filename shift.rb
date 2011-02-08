#!/usr/bin/ruby

# Problem Sheet 1: Shift Cipher
# Assumptions: Plain text consists of lowercase letters only

unless ARGV.length == 1
  puts "usage: ./shift $CIPHERTEXT"
  exit 1
end

ciphertext = ARGV[0]

puts "Ciphertext: %s" % ciphertext

(1..26).each do |i|
  plaintext = ""
  ciphertext.downcase.each_byte do |c|
    new_c = ((c + i - 97) % 26 + 97).chr
    plaintext = plaintext + new_c
  end
  
  puts "Plaintext (%02d shift): %s" % [i, plaintext]
end
