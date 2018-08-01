require 'yaml'
users = ['mesjasz', 'john', 'jan']
body_one = []
body_two = [] 
body_three = []
config = YAML.load_file('mail.yml')

users.each do |user|
config['sales']['employee'].each do |mail|
if (mail == user)

body_one << user
puts "Wysylm email #{mail} do #{user} tresci #{body_one}"
body_one.delete user
else
puts "niegacja #{mail} nie nalezy do #{user}"
end
end
end 

