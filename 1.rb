NUMBERS   =  {
  "one"   => 1,
  "two"   => 2,
  "three" => 3,
  "four"  => 4,
  "five"  => 5,
  "six"   => 6,
  "seven" => 7,
  "eight" => 8,
  "nine"  => 9
}

def part_one(input)
  (input.match(/(\d)/)[1] + input.reverse.match(/(\d)/)[1]).to_i
end

def part_two(input)
  pattern = %r{(?=(\d|#{NUMBERS.keys.join("|")}))}
  values  = input.strip.scan(pattern).flatten.map { NUMBERS.fetch(_1, _1) }
  "#{values.first}#{values.last}".to_i
end

puts "Part one: #{File.readlines("1.input").sum(&method(:part_one))}"
puts "Part two: #{File.readlines("1.input").sum(&method(:part_two))}"
