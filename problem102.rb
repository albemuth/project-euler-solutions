# http://projecteuler.net/problem=102
# Three distinct points are plotted at random on a Cartesian plane, for which -1000 ≤ x, y ≤ 1000, such that a triangle is formed.

# Consider the following two triangles:

# A(-340,495), B(-153,-910), C(835,-947)

# X(-175,41), Y(-421,-714), Z(574,-645)

# It can be verified that triangle ABC contains the origin, whereas triangle XYZ does not.

# Using triangles.txt (right click and 'Save Link/Target As...'), a 27K text file containing the co-ordinates of one thousand "random" triangles, find the number of triangles for which the
# interior contains the origin.

# NOTE: The first two examples in the file represent the triangles in the example given above.

def test_inside tri
  a = tri[0..1]
  b = tri[2..3]
  c = tri[4..5]
  o = [0, 0]
  return (dot_product(o, a, b) + dot_product(o, b, c) + dot_product(o, c, a) - Math::PI) ** 2 < 0.00000000000001
end

def dot_product a, b, c
  Math.acos (seg(b, c) ** 2 - seg(a, b) ** 2 - seg(a, c) ** 2) / (2 * seg(a, b) * seg(a, c))
end


def seg a, b
  Math.sqrt (a[0] - b[0]) ** 2 + (a[1] - b[1]) ** 2
end


File.open('triangles.txt', 'r') do |f|
  n = 0
  while line = f.gets
    n += 1 if test_inside line.split(',').map { |x| x.to_i }
  end
  puts n
end




