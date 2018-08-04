require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("https://www.xe.com/currencyconverter/convert/?Amount=1&From=USD&To=HTG"))
puts "$1 USD now trading for" + page.css("span.uccResultAmount").text + " Haitian Gourdes."
