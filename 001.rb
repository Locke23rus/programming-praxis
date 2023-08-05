# frozen_string_literal: true

# (19 + 2.14) * (4.5 - 2 / 4.3) = 85.2974
input = '19 2.14 + 4.5 2 4.3 / - *'
stack = []

input.split(' ').each do |token|
  if '+-*/'.include?(token)
    right = stack.pop
    left = stack.pop
    expression = "#{left} #{token} #{right}"
    stack << eval(expression)
  else
    stack << token
  end
end

puts stack.last.round(4)
