require 'faker'


100.times do 
  Task.create(:text => Faker::Lorem.sentence(word_count = 16))
end
