class CreditCheck

  def initialize(n)
    @number = n
  end

  def split_number
    @number.to_s.chars.map {|n| n.to_i}
  end

  def double_every_other_digit
    number = split_number.reverse
    max_index = number.size - 1

    (0..max_index).each do |index|
      if index % 2 == 1
        number[index] = number[index] * 2
      end
    end
    number.reverse
  end

  def add_digits_over_nine
    double_every_other_digit.map do |num|
      if num > 9
        num = num - 9
      else
        num
      end
    end
  end

  def total
    add_digits_over_nine.reduce(:+)
  end

  def divisible_by_ten
    total % 10
  end

  def validity_check
    if divisible_by_ten == 0
      puts "VALID"
    else
      puts "INVALID"
    end
  end
end

credit = CreditCheck.new(342801633855673)
credit.validity_check
