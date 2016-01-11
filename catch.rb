require 'sinatra'

post '/payload' do
  system("git submodule update --remote")
  system("git add .")
  system("git commit -m Record_new_change")
  system("git push")
  puts "Finished handling"
end

