class Exercise
  def initialize
    @conversion_map = {'M' => 1000,
        'D' => 500,
        'C' => 100,
        'L' => 50,
        'X' => 10,
        'V' => 5,
        'I' => 1 }
  end

  def to_decimal(roman_number)
    decimal = 0
    splitted = roman_number.split('')
    splitted.each_with_index do |el, idx|
      if need_sum(splitted, idx)
        decimal += @conversion_map[el]
      else
        decimal -= @conversion_map[el]
      end
    end
    decimal
  end

  def need_sum(splitted, idx)
    splitted[idx+1].nil? || @conversion_map[splitted[idx]] >= @conversion_map[splitted[idx+1]]
  end
end
