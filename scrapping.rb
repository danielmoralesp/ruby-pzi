require 'nokogiri'
require 'open-uri'

url = 'http://www.reactiongifs.com/'

5.times do |i|
  puts "Pagina #{i}"
  document = Nokogiri::HTML(open(url))
  div_main = document.css('div#main')
  div_main.css('div.post').each do |post|
    title =  post.css('h2').text
    gif_url = post.css('div.entry img').attr('src')
    File.open(title, 'w') do |new_file|
      puts "Descargando gif: #{title}"
      open(gif_url, 'r') do |gif|
        new_file.write(gif.read)
      end
    end
  end
  document.css('div.nav-entries div.nav-next a').attr('href')
end
