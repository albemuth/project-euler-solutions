
@a = (1..9).to_a
@permutations = []


def permute head, rest
  return if rest.size == 1
  head += rest[0]
  rest = rest[1...rest.size]
  (0...rest.length).each do |i| 
    
    
    
    @permutations.push(head + rest)
  end
end


