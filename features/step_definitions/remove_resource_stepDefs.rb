Then('a success message will pop up') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Given('I have resources in my journal') do
    visit "http://localhost:3000/learning_resources/new"
    fill_in("Title", with: "Delete Me")
    select('Development', from: 'Resource type')
    fill_in("Url", with: "https://www.deleteme.co.uk")
    fill_in("Description", with: "Delete me")
    click_button('Add New Resource')
  end
  
  Given('I am on the My Journal Page') do
    visit "http://localhost:3000/learning_resources"
  end
  
  When('I click the delete button on the learning resource') do
    find(:xpath, "//a[text() = 'Delete Me']/ancestor::tr/td[5]/a[@data-method='delete']").click
  end
  
  When('I confirm the deletion in the dialog') do
    page.accept_confirm
  end
  
  Then('the resource will be removed from my journal') do
    page.should have_no_content("Delete Me")
  end
  
  Given('I am on the Resource Details page') do
    page.should have_css("#resource-details")
  end
  
  When('I click the delete button in the resource details') do
    find(:css, ".btn.btn-danger.mb-3").click
  end
  
  Then('I will navigate to the My Journal page') do
    expect(page).to have_current_path("http://localhost:3000/learning_resources")
  end

  Then('a message for successful deletion will pop up') do
    page.should have_xpath("//div[@role='alert'][contains(text(), 'Learning resource was successfully destroyed.')]")
  end
