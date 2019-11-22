# frozen_string_literal: true

=begin
Write your code for the 'Roman Numerals' exercise in this file. Make the tests in
`roman_numerals_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/roman-numerals` directory.
=end

module RomanNumerals
  NUMERALS = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
     90 => "XC",
     50 => "L",
     40 => "XL",
     10 => "X",
     9 => "IX",
     5 => "V",
     4 => "IV",
     1 => "I"
  }

  def to_roman
    value = self.dup
    str = ''
    while value > 0
      NUMERALS.each do |key, symbol|
        if value >= key
          str += symbol
          value -= key
          break
        end
      end
    end
    str
  end

end

class Integer
  include RomanNumerals
end
