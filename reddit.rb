require "HTTP"

puts "Welcome to reddit!"
puts
print "Please enter the subreddit you wish to access: "
sub_reddit = gets.chomp

response_subreddit = HTTP.get("https://www.reddit.com/r/#{sub_reddit}/.json")

index = 0

data_subreddit = response_subreddit.parse["data"]["children"].length.times do
  data_subreddit = response_subreddit.parse["data"]["children"][index]["data"]["title"]
  index += 1
  pp data_subreddit
end