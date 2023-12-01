puts "Part one: #{File.readlines("1.input").sum(&-> { (_1.match(/(\d)/)[1] + _1.reverse.match(/(\d)/)[1]).to_i })}"

def parse_line(input)
  numbers = { "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9 }
  pattern = %r{(?=(\d|#{numbers.keys.join("|")}))}
  values  = input.strip.scan(pattern).flatten.map { numbers.fetch(_1, _1) }

  "#{values.first}#{values.last}".to_i
end

puts "Part two: #{File.readlines("1.input").sum(&method(:parse_line))}"
