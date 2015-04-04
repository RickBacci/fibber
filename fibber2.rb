# f(1) = 0
# f(2) = 0, 1
# f(3) = 0, 1, 1
# f(4) = 0, 1, 1, 2
# f(5) = 0, 1, 1, 2, 3


#f(n) = f(n - 1) + f(n - 2)

# f(6) = f(6) + f(5) + f(4) + f(3) + f(2) + f(1)
#
#
# f(6) = f(5) + f(4)
# f(5) = f(4) + f(3)
# f(4) = f(3) + f(2)
# f(3) = f(2) + f(1)
# f(2) = 1
# f(1) = 0


@all = []

def fibber(num)
  original_number ||= num

  @all.unshift(1) if num == 2
  @all.unshift(0) if original_number == 1


  if num == 0 #return the values
    @all.join(', ')
  else
    num -= 1
    fibber(num)
  end
end

p fibber(1)
puts
#p fibber(2)
p fibber(3)# = fibber(2) + fibber(1)





