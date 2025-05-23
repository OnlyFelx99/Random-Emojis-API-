require 'sinatra'
require 'json'

begin 

LIST_EMOJIS = ["😀", "🥰", "😶", "☹️", "😏", "😰", "🌚", "🎃", "🌞", "🌛", "🌜", "🔪", "😈", "☃️", "🤥", "😖", "🥴", "🫡", "😳", "🤐", "😎", "🤩", "🤫", "🧐", "😒", "🤪", "😉", "😹", "😻", "🤯"]

get '/emojis' do
  content_type :json 
  { emoji: LIST_EMOJIS.sample }.to_json 
end
rescue => e 
puts "Ocorreu um erro na API! #{e.message}"
end
