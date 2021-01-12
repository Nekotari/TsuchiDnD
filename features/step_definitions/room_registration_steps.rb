Given("I have registered several rooms") do
  FactoryBot.create(:owner => @registered_user,
                    :room => {:country => 'Japan',
                              :city => 'Tokyo',
                              :room_type => 'house',
                              :price => 1000})
  FactoryBot.create(:owner => @registered_user,
                    :room => {:country => 'USA',
                              :city => 'New York',
                              :room_type => 'apartment',
                              :price => 100})
end
Then("I should see the list of my rooms") do
  expect(page).to have_content('house')
  expect(page).to have_content('apartment')
end