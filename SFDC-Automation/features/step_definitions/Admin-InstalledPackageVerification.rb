When(/^I navigate to installed packages page for sit env$/) do
  visit("https://cs91.salesforce.com/0A3?setupid=ImportedPackage&retURL=%2Fui%2Fsetup%2FSetup%3Fsetupid%3DStudio")
  sleep 40
end

When(/^I get the csm version number in installed packages page$/) do
  $csmversion=find(:xpath,"//th[*[text()='CSM']]/following-sibling::td[2]").text
  puts $csmversion
  sleep 5
end

When(/^I get the CLM Quote Extension version in installed packages page$/) do
  $CLMQuoteExtensionversion=find(:xpath,"//th[*[text()='CLM Quote Extension']]/following-sibling::td[2]").text
  puts $CLMQuoteExtensionversion
  sleep 5
end

When(/^I get the CLM Entitlement Extenstion version  in installed packages page$/) do
  $CLMEntitlementExtenstionversion=find(:xpath,"//th[*[text()='CLM Entitlements Extension']]/following-sibling::td[2]").text
  puts $CLMEntitlementExtenstionversion
  sleep 5
end

When(/^I get the SSI Zenith version in installed packages page$/) do
  $SSIZenithversion=find(:xpath,"//th[*[text()='SSI Zenith']]/following-sibling::td[2]").text
  puts $SSIZenithversion
  sleep 5
end


Then(/^I should verify csm version number with "([^"]*)"$/) do |excsmversion|
  if $csmversion == excsmversion
     puts "csm version is matched with excel"
  else
    writeFailure "csm version is not matched with excel"
  end
end

Then(/^I should verify CLM Quote Extension version with "([^"]*)"$/) do |exquoteversion|
  if $CLMQuoteExtensionversion == exquoteversion
     puts "CLM Quote Extension version is matched with excel"
  else
    writeFailure "CLM Quote Extension version is not matched with excel"
  end
end

Then(/^I should verify CLM Entitlement Extenstion version with "([^"]*)"$/) do |exEntitlementversion|
  if $CLMEntitlementExtenstionversion == exEntitlementversion
     puts "CLM Entitlement Extenstion version is matched with excel"
  else
    writeFailure "CLM Entitlement Extenstion version is not matched with excel"
  end
end

Then(/^I should verify SSI Zenith version with "([^"]*)"$/) do |exssizenith|
  if $SSIZenithversion == exssizenith
     puts "SSIZenith version is matched with excel"
  else
    writeFailure "SSIZenith version is not matched with excel"
  end
end

When(/^I navigate to installed packages page for prod env$/) do
  visit("https://na35.salesforce.com/0A3?setupid=ImportedPackage&retURL=%2Fui%2Fsetup%2FSetup%3Fsetupid%3DStudio")
  sleep 20
end
