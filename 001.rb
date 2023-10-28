# frozen_string_literal: true

def evaluate(input)
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

  return stack.last.round(4)
end

puts evaluate('19 2.14 + 4.5 2 4.3 / - *')
