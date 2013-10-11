# begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
# 
# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938  53 = 49714.
# 
# What is the total of all the name scores in the file?

File.open('names.txt', 'r') do |f|
  line = f.gets
  x = line.split(',').sort.inject([0,1]) do |sum, name|
    [sum[0] + (name.split(//)[1...name.size-1].inject(0){|n,i| n + i[0] - 64 } * sum[1]), sum[1] += 1]
  end
  puts x
end