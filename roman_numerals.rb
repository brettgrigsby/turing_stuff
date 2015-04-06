class Fixnum

  def to_roman

    output = []
    let_key = 1
    letters = {0 => "I", 1 => "I", 2 => "V", 3 => "X", 4 => "L", 5 => "C", 6 => "D", 7 => "M"}
    size = self.to_s.length
    num_set = self.to_s.chars.map(&:to_i)
    remainder = num_set[0] % 5


    if num_set[0] >= 4
      let_key += 1
    elsif num_set[0] < 4
      remainder -= 1
    end

    if num_set[0] == 9
      output << letters[let_key + 1]
    else
      output << letters[let_key]
    end


    if remainder == 4
      output.unshift(letters[let_key - 1])
    else
      remainder.times { output << letters[let_key - 1]}
    end

    output.join

  end
end
