Capybara.default_driver = :selenium
if Capybara.current_driver == :selenium
  require 'headless'
  headless = Headless.new
  headless.start
end

Before do
  print '.'
end

at_exit do
  print "\n"
  print "\#\#\# All Cucumber tests finished. \#\#\#\n"
end
