require 'rest-client'

print "Enter your search query: "
query=gets.chomp

url = 'https://www.bing.com'
resp = RestClient.get url, {params: {q: query}}

res=resp.body.scan(/<h2><a.*?href="(.*?)".*?h=.*?>(.*?)<\/a.*?>/)

puts
puts
puts "Search Results for #{query}:"
puts
res.each do |r| 
  puts r[1]
  puts r[0]
  puts "-"*30
end