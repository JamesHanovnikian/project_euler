triangle_numbers = [1, 3, 6, 10]

i = 0
while i < 50000
  sum = 0
  starting_num = triangle_numbers.length + 1
  while starting_num > 0
    sum = starting_num + sum
    starting_num = starting_num - 1
  end
  i = i + 1
  triangle_numbers << sum
end

# find the divisers

i_2 = 0
divisors_array = []
highest_number = 0
while i_2 < triangle_numbers.length
  divisors_array = (1..triangle_numbers[i_2]).select { |n| triangle_numbers[i_2] % n == 0 }
  # find divisors array lenght keep track of a max.
  if divisors_array.length + 1 > highest_number
    highest_number = divisors_array.length + 1
    p highest_number
  end
  i_2 = i_2 + 1
end
