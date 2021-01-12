Given("I am an administrator") do
  @admin = FactoryBot.create(:admin,
                                       :email => "admin@testdomain.test",
                                       :password => "pa$$word")
end

When("I visit the users page") do
  visit root_path
end

Then("should see the list of users") do
  @registered_user = FactoryBot.create(:user,
                                       :email => "tester@testdomain.test",
                                       :password => "pa$$word")
  user_mail = @registered_user.email
  expect(page).to have_content(user_mail)
end
