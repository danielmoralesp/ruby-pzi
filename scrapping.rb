require 'nokogiri'
require 'open-uri'

url = 'http://www.reactiongifs.com/'
document = Nokogiri::HTML(open(url))
div_main = document.css('div#main')
div_main.css('div.post').each do |post|
  puts post.css('h2').text
  puts post.css('div.entry img').attr('src')
end
