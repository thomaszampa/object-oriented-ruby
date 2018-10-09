require "http"

while true 

  system "clear"

  puts "Hail and well met user! Please enter a word and I, the almighty word wizard, will return the definition. Additionally, I will provide examples and pronunciation. Your welcome."

  print "Please enter a word: "
  word = gets.chomp


  response_def = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")
  data_def = response_def.parse

  response_ex = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/examples?includeDuplicates=false&useCanonical=false&limit=5&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")
  data_ex =  response_ex.parse

  response_pro = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=ac6099e63826b8650f05e22c4cc08baa2f21668e3f16176fd")
  data_pro = response_pro.parse


  definition = data_def[0]["text"]
  examples = data_ex["examples"][0]["text"]
  pronunciation = data_pro[0]["raw"]

  puts " "
  puts "AHA! But of course! The definition of #{word} is: #{definition}"
  puts " "
  puts "Some additional examples are: #{examples}"
  puts " "
  puts "Proper pronunciation is as follows: #{pronunciation}"

  puts "If you are satisfied enter q to quit, otherwise continue your futile attempts to stump the wwooorrrddd wiizzaarddddd."
  input_choice = gets.chomp
  if input_choice == "q"
    puts "Farewell!"
    break
  end
  
end