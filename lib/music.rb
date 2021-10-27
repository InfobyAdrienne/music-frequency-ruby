require 'benchmark'

class Music
UPPER_LIMIT_DEFAULT = 1000
LOWER_LIMIT_DEFAULT = 40

def adjust(input, upper_limit = UPPER_LIMIT_DEFAULT, lower_limit = LOWER_LIMIT_DEFAULT)
  unless input.is_a?(Array)
    raise "Sound waves are not parsed correctly"
  end 

  output = input.map do |x| 
    raise "Sound waves are not parsed correctly" if (x < 1)
  if x > upper_limit
    upper_limit
  elsif x < lower_limit
    lower_limit
  else
    x
  end 
end
  return output
end 

def running_time
  time = Benchmark.measure {
    44100.times do 
      Music.new.adjust([30])
    end 
  }
  puts time.real
 end
# at the moment the code does perform in less than 100ms

end