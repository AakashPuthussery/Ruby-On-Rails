# a = [1,2,3,4,5,6,7,8,9]
# # print a
# # puts a
# # p a
# p a.last
x = "a".."z"
p x.to_a.shuffle
p x.to_a.reverse!
p x.to_a.length
p x.to_a.first
p x.to_a.last
p x.to_a.include?("a")
p x.to_a.push("a")
b = x.to_a.pop("a")
p b