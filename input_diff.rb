#!/usr/bin/ruby

# Analyse the input/output difference distance

def subs(n)
    [
        0x07, 0x0D, 0x0E, 0x03,
        0x00, 0x06, 0x09, 0x0A,
        0x01, 0x02, 0x08, 0x05,
        0x0B, 0x0C, 0x04, 0x0F
    ][n]
end

def row(a_prime)
    puts "a' = %04b" % [a_prime]
    puts "a    | a*   | a'   | b    | b*   | b'  "
    puts "-----+------+------+------+------+-----"
    (0..15).each do |a|
        a_star = a ^ a_prime

        b = subs(a)

        b = subs a
        b_star = subs a_star
        b_prime = b ^ b_star

        puts "%04b | %04b | %04b | %04b | %04b | %04b" % [a, a_star, a_prime, b, b_star, b_prime]
    end
end

(0..15).each do |n|
    row n
end
