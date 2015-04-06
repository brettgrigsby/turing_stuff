class Fixnum

  def to_roman

    output = []
    let_key = 1
    letters = {0 => "I", 1 => "I", 2 => "V", 3 => "X", 4 => "L", 5 => "C", 6 => "D", 7 => "M"}
    size = self.to_s.length
    num_set = self.to_s.chars.map(&:to_i)
    remainder = num_set[0] % 5


    if num_set[0] < 4
      remainder.times { output << letters[let_key] }
    elsif num_set[0] == 4
      output << letters[let_key]
      output << letters[let_key + 1]
    elsif num_set[0] == 5
      output << letters[let_key + 1]
    elsif num_set[0] > 5 && num_set[0] != 9
      output << letters[let_key + 1]
      remainder.times { output << letters[let_key] }
    else
      output << letters[let_key]
      output << letters[let_key + 2]
    end

    output.join

  end
end
