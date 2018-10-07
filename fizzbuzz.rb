# 2018 MOST COMMON WHITEBOARDING QUESTION

# write numbers 1 through 100
# if a number is divisible by 3 output "fizz"
# if a number is divisible by 5 output "buzz"

index = 1

100.times do
  if index % 15 == 0
    puts "fizzbuzz"
  elsif index % 3 == 0
    puts "fizz"
  elsif index % 5 == 0
    puts "buzz"
  else
    puts index
  end
  index += 1
end