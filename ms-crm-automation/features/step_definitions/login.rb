

Given(/^I login to the "([^"]*)" application$/) do |application|
  begin
    visit get_url
    arg = getCredentialInfo
    sleep 5
    find("#cred_userid_inputtext").send_keys arg["Username"]
    find("#cred_password_inputtext").send_keys arg["Password"]
    sleep 5
    puts "Successfully entered the #{application} user credentials"
    find("#cred_sign_in_button").click
    sleep 50
    puts "Successfully clicked the Login button"
  rescue Exception => ex
    raise "Error occurred while entering #{application} user credentials"
  end
end


Then(/^I able to see the logged in to "([^"]*)" application$/) do |app|
  sleep 5
  if page.has_css?("#navTabGroupDiv")
    puts "Successfully logged in to #{app} application"
  else
    raise "Failed to logged in to #{app} application"
  end
end
