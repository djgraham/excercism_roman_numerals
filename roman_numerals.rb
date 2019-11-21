=begin
Write your code for the 'Roman Numerals' exercise in this file. Make the tests in
`roman_numerals_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/roman-numerals` directory.
=end

module RomanNumerals
  def to_roman
    if self > 5
      "V" + "I" * (self - 5)
    elsif self > 4
      "V"
    elsif self > 3
      "IV"
    else
      "I" * self
    end

  end

end

class Integer
  include RomanNumerals

end
