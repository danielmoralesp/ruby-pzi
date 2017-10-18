require 'nokogiri'
require 'open-uri'

url = 'http://www.reactiongifs.com/'

document = Nokogiri::HTML(open(url))

puts document
