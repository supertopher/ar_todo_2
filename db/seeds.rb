require 'faker'


100.times do 
  Task.create(:description => Faker::Lorem.sentence(word_count = 5))
end
