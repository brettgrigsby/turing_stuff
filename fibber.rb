quantity = gets.to_i

sequence = [ 0, 1]

(quantity - 2).times do
  sequence << sequence[-2] + sequence[-1]
end

sequence.each_slice(5) do |row|
  puts row.map { |e| "%#{sequence[-1].to_s.length}d" % e }.join("  ")
end
