require 'rest-client'

puts "Enter Search:"
search_query = gets.chomp

result = RestClient.get('https://www.bing.com/search/search?q=' + search_query)

file = 'index.html'

File.open(file,"w") do |file|
  file.write(result)
end

