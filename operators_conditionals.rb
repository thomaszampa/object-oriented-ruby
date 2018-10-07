#Q:2

count = 0

while count <= 10 do 
  puts count
  count += 1
end

#

result = false

unless result
  puts "HELLO!"
end

result = false

unless result == true
  puts "HELLO!"
end

#

sam_recipes = ["pizza", "pasta", "salad", "steak", "pie", "crepes", "burger", "taco", "hot dog", "burrito", "quesidilla"]
sally_languages = ["french", "english", "spanish", "russian", "german", "manderin"]

if sam_recipes.length > 10
  if sally_languages.length > 5
    puts "Sam and Sally should date"
  end 
end

sam_recipes.each do |x|
  if x == "crepes"
    sally_languages.each do |y|
      if y == "french"
        puts "Sam and Sally should marry"
      end
    end
  end
end 