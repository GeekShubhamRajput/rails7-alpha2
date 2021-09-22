FactoryBot.define do
  factory :tutor do
    name {'Shubham'} 
    email {'shubham@test.com'}
    course_id {FactoryBot.create(:course).id}
  end
end
