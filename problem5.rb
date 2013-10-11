(1...100000000).each do |i|
  n = i * 20
  (print n; exit) if [19,18,17,16,15,14,13,12,11].inject(true) do |divisible, i|
    divisible && (n % i == 0)
  end
end