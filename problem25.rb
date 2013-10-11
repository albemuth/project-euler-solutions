

@hash = {}

def fib n
  return @hash[n] ||=  case n
  when 1 then 1
  when 2 then 1
  else fib(n-1) + fib(n-2)
  end
end

(1...1500000).each { |i|  (p i, fib(i); exit) if fib(i).to_s.length == 1000}
