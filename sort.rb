def parse_record(str)
  unit_number, unit_letter = /^#([0-9]*)([A-Za-z]*)/.match(str).captures
  return unit_number.to_i, unit_letter, str
end

puts File.foreach('data.txt').map {|x| parse_record(x)}.sort().map {|y| y[2]}
