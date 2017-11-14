

Given(/^I should navigate to Salesforce login page for sit enviroment$/) do
  visit "https://test.salesforce.com/"
  sleep 30
end

When(/^I fill "([^"]*)" as "([^"]*)"$/) do |locator,value|
   fill_in(locator, :with => value)
   sleep 5
end

When(/^I click on submit button$/) do
  find(:id,"Login").click
  sleep 30
end

Given(/^I should navigate to Salesforce login page for sitnext enviroment$/) do
  visit "https://test.salesforce.com/"
  sleep 30
end

Given(/^I should navigate to Salesforce login page for Prod enviroment$/) do
  visit "https://login.salesforce.com/"
  sleep 30
end

Then(/^I should see Opportunity page succesfully$/) do
  $pageTitle = page.title
  puts "current page title = #{$pageTitle}"
  if $pageTitle == "Opportunities: Home ~ Salesforce - Performance Edition"
    puts "succesfully visited home page"
  else
    writeFailure "Not visited home page successfully"
  end
end
