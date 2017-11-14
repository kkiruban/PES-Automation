require 'rubygems'
require 'rspec/expectations'
require 'Capybara'


def getCredentialInfo
  YAML.load_file("./config/Login.yml")[ENV['UserRole']]
end

def writeFailure(data)
  puts "<span style='color:red'>#{data}</span>"
end

def putstr(s)
   puts "<b><font color=red>#{s}</font></b>"
end

def getDetails(yamlInfo)
	YAML.load_file("./config/Details.yml")[yamlInfo]
end




