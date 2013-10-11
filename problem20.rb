# Find the sum of the digits in the number 100!
eval((2..100).inject(1){ |f, n| f * n }.to_s.split(//).join('+')) 
# => 648