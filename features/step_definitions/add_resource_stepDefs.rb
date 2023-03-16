Given('the Add New Resource link is in the navbar') do
  visit "http://localhost:3000/"
  expect(page).to have_current_path("http://localhost:3000/")
end
  
When('I click the link') do
    find_link("Add New Resource").click
  end
  
Then('I will navigate to the Add New Resource page') do
    expect(page).to have_current_path("http://localhost:3000/learning_resources/new");
  end

Given('I am on the Add New Resources page') do
  visit "http://localhost:3000/learning_resources/new"
end

When('I input details into the form') do
  fill_in("Title", with: "Ruby")
  select('Development', from: 'Resource type')
  fill_in("Url", with: "https://www.ruby-lang.org/en/")
  fill_in("Description", with: "Ruby's official website")
end

Then('the form details will be correct') do
  page.should have_field("Title", with: "Ruby")
  page.should have_field("Resource type", with: "Development")
  page.should have_field("Url", with: "https://www.ruby-lang.org/en/")
  page.should have_field("Description", with: "Ruby's official website")
end

Given('I am on the Add New Resources page and the resource details are filled out') do
  visit "http://localhost:3000/learning_resources/new"
  fill_in("Title", with: "Ruby")
  select('Development', from: 'Resource type')
  fill_in("Url", with: "https://www.ruby-lang.org/en/")
  fill_in("Description", with: "Ruby's official website")
end

When('click the Add New Resource button') do
  click_button('Add New Resource')
end

Then('I will navigate to the Resource Details page') do
  page.should have_css("#resource-details")
end

Then("the resource's details will be correct") do
  page.should have_selector("h2", text: "Ruby")
  page.should have_selector("h3", text: "Development")
  page.should have_selector("a", text: "https://www.ruby-lang.org/en/")
  page.should have_content("Ruby's official website")
end

Then('a message for successful resource addition will pop up') do
  page.should have_xpath("//div[@role='alert'][contains(text(),'Learning resource was successfully created.')]")
end

Then('the resource will be in the My Journal page') do
end
