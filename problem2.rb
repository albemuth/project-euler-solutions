# Find the sum of all the even-valued terms in the fibonnacci sequence which do not exceed four million.

sum,n,a,b =  0,1,1,0
while 1
  n,a,b = n+a,n ,a
  sum += n if (n%2 == 0)
  (puts sum; break) if n+a > 4_000_000
end
