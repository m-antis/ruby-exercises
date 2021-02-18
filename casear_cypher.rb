def caesar_cypher(string, offset)
  upper_floor = 65 ; upper_ceiling = 90
  lower_floor = 97 ; lower_ceiling = 122
  cypher = []
  string.each_char do |char|
    ascii = char.ord
    if ascii.between? upper_floor, upper_ceiling or ascii.between? lower_floor, lower_ceiling
      case ascii
      when upper_floor..upper_ceiling
        cypher << ((((ascii - upper_floor) + offset) % 26)  + upper_floor).chr
      else
        cypher << ((((ascii - lower_floor) + offset) % 26)  + lower_floor).chr
      end
    else
      cypher << char
    end
  end
  cypher
end
