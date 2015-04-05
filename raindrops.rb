require 'Prime' #Prime is a ruby class that allows us to find prime numbers

class Raindrops
  def self.convert(number)
    drop_speak = ""

    factors = Prime.prime_division(number) #finds prime factors and puts them into an array of 2-element arrays

    if factors.flatten.include?(3) #we flatten so the array of arrays becomes just 1 array that .include? can search
      drop_speak << "Pling"
    end

    if factors.flatten.include?(5)
      drop_speak << "Plang"
    end

    if factors.flatten.include?(7)
      drop_speak << "Plong"
    end

    if drop_speak.empty? #no prime factors so pass through the original number
      number.to_s
    else
      drop_speak #there ARE prime factors so ouput the corresponding sounds
    end
  end
end
