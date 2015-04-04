puts "Enter sequnce length:"
quantity = gets.to_i
sequence = [ 0, 1]

(quantity - 2).times { sequence << sequence[-2] + sequence[-1] }

sequence.each_slice(5) { |row| puts row.map { |e| "%#{sequence[-1].to_s.length + 1}d" % e }.join }
