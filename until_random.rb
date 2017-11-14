require "httparty"
require 'terminal-table'

print "Kaç kelime istiyorsunuz ? :"
b = gets.chomp.to_i

i = 0
until i==b
  a = HTTParty.get("http://setgetgo.com/randomword/get.php")
  rows = []
  i+=1
  rows << [i,a,"türkçesi"]
  table = Terminal::Table.new  :rows => rows
  #table = Terminal::Table.new :title => "Words", :rows => rows


  puts table

end


