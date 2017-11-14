When(/^I fill in the following:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |row|
    fill_in(row["field"], with: row["value"], match: :prefer_exact)
    end
end

When(/^I select the following:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |row|
    select(row["value"], :from => row["field"], match: :prefer_exact)
  end
end

#code to click on all tabs section and click on accounts tab
When(/^I click on accounts tab from all tabs section$/) do
  find(:xpath,".//*[@id='AllTab_Tab']/a/img").click
  sleep 20
  find(:xpath,".//a[@class='listRelatedObject accountBlock title']").click
  sleep 20
end

#code to click on all tabs section and click on contacts tab
When(/^I click on contacts tab from all tabs section$/) do
  find(:xpath,".//*[@id='AllTab_Tab']/a/img").click
  sleep 20
  find(:xpath,".//a[@class='listRelatedObject contactBlock title']").click
  sleep 20
end

#code to click on all tabs section and click on products tab
When(/^I click on products tab from all tabs section$/) do
  find(:xpath,".//*[@id='AllTab_Tab']/a/img").click
  sleep 20
  find(:xpath,".//a[@class='listRelatedObject productBlock title']").click
  sleep 20
end

When(/^I click on assets tab from all tabs section$/) do
  find(:xpath,"//*[@id='AllTab_Tab']/a/img").click
  sleep 20
  find(:xpath,"//a[@class='listRelatedObject assetBlock title']").click
  sleep 20
end

When(/^I click on leads tab from all tabs section$/) do
  find(:xpath,"//*[@id='AllTab_Tab']/a/img").click
  sleep 20
  find(:xpath,"//a[@class='listRelatedObject leadBlock title']").click
  sleep 20
end

When(/^I click on location address tab from all tabs section$/) do
  find(:xpath,"//*[@id='AllTab_Tab']/a/img").click
  sleep 20
  find(:xpath,"//a[@class='listRelatedObject Custom32Block title']").click
  sleep 20
end

Then(/^I should see location address page succesfully$/) do
  $pageTitle = page.title
  puts "current page title = #{$pageTitle}"
  if $pageTitle == "Contacts: Home ~ Salesforce - Performance Edition"
    puts "succesfully visited home page"
  else
    writeFailure "Not visited home page successfully"
  end
end

Then(/^I should see leads page succesfully$/) do
  $pageTitle = page.title
  puts "current page title = #{$pageTitle}"
  if $pageTitle == "Contacts: Home ~ Salesforce - Performance Edition"
    puts "succesfully visited home page"
  else
    writeFailure "Not visited home page successfully"
  end
end

Then(/^I should see assets page succesfully$/) do
  $pageTitle = page.title
  puts "current page title = #{$pageTitle}"
  if $pageTitle == "Contacts: Home ~ Salesforce - Performance Edition"
    puts "succesfully visited home page"
  else
    writeFailure "Not visited home page successfully"
  end
end

Then(/^I should see add standard price page succesfully$/) do
  $pageTitle = page.title
  puts "current page title = #{$pageTitle}"
  if $pageTitle == "Contacts: Home ~ Salesforce - Performance Edition"
    puts "succesfully visited home page"
  else
    writeFailure "Not visited home page successfully"
  end
end


Then(/^I should see products page succesfully$/) do
  $pageTitle = page.title
  puts "current page title = #{$pageTitle}"
  if $pageTitle == "Contacts: Home ~ Salesforce - Performance Edition"
    puts "succesfully visited home page"
  else
    writeFailure "Not visited home page successfully"
  end
end


Then(/^I should see contacts page succesfully$/) do
  $pageTitle = page.title
  puts "current page title = #{$pageTitle}"
  if $pageTitle == "Contacts: Home ~ Salesforce - Performance Edition"
    puts "succesfully visited home page"
  else
    writeFailure "Not visited home page successfully"
  end
end

Then(/^I should see account page succesfully$/) do
  $pageTitle = page.title
  puts "current page title = #{$pageTitle}"
  if $pageTitle == "Accounts: Home ~ Salesforce - Performance Edition"
    puts "succesfully visited home page"
  else
    writeFailure "Not visited home page successfully"
  end
end

When(/^I fill in "([^"]*)" with random "([^"]*)"$/) do |field_name, value|
  randomno=('0000'..'9999').to_a.sample
  randomvalue = value + randomno
  puts randomvalue
  fill_in(field_name, with: randomvalue, match: :prefer_exact)
  sleep 5
end

When(/^I click on "([^"]*)" check box field$/) do |field_label_name|
  check field_label_name
  sleep 5
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field_name, value|
  fill_in(field_name, with: value, match: :prefer_exact)
  sleep 5
end

Then(/^I select "([^"]*)" from "([^"]*)" field$/) do |value, locator|
  if page.has_select? locator
    select(value, :from => locator, match: :prefer_exact)
  else
    writeFailure " #{locator} is not visible"
  end
end

When(/^I click on contact name lookup field and I select any existing contact$/) do
  page.driver.browser.window_handles.first
  main = page.driver.browser.window_handles.first
  find(:xpath,"//img[@title='Contact Lookup (New Window)']").click
  sleep 25
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  lookup = page.driver.browser.window_handles.last
  page.driver.browser.switch_to.frame("searchFrame")
  fill_in("lksrch",:with=> "smoke-test")
  sleep 15
  find_button('Go!').click
  sleep 25
  page.driver.browser.switch_to.window(lookup)
  page.driver.browser.switch_to.frame("resultsFrame")
  within('.pbBody') do
    table=all("tbody")[0]
    sleep 5
    table.all('tr')[1].all('th')[0].find('a').click
  end
  page.driver.browser.switch_to.window(main)
  sleep 25
end

When(/^I click on account name lookup field and I select any existing account$/) do
  page.driver.browser.window_handles.first
  main = page.driver.browser.window_handles.first
  find(:xpath,"//img[@title='Account Name Lookup (New Window)']").click
  sleep 25
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  lookup = page.driver.browser.window_handles.last
  page.driver.browser.switch_to.frame("searchFrame")
  fill_in("lksrch",:with=> "smoke-test")
  sleep 15
  find_button('Go!').click
  sleep 25
  page.driver.browser.switch_to.window(lookup)
  page.driver.browser.switch_to.frame("resultsFrame")
  within('.pbBody') do
    table=all("tbody")[0]
    sleep 5
    table.all('tr')[1].all('th')[0].find('a').click
  end
  page.driver.browser.switch_to.window(main)
  sleep 25
end

When(/^I click on Price Book lookup field and I select any existing Price Book$/) do
  page.driver.browser.window_handles.first
  main = page.driver.browser.window_handles.first
  find(:xpath,"//img[@title='Price Book Lookup (New Window)']").click
  sleep 25
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  lookup = page.driver.browser.window_handles.last
  page.driver.browser.switch_to.frame("searchFrame")
  fill_in("lksrch",:with=> "Standard Price Book")
  sleep 15
  find_button('Go!').click
  sleep 25
  page.driver.browser.switch_to.window(lookup)
  page.driver.browser.switch_to.frame("resultsFrame")
  within('.pbBody') do
    table=all("tbody")[0]
    sleep 5
    table.all('tr')[1].all('th')[0].find('a').click
  end
  page.driver.browser.switch_to.window(main)
  sleep 25
end