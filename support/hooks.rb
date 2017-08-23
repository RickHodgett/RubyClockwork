require 'selenium-webdriver'


before do
  driver = Selenium::WebDriver::Driver.for :chrome
  driver.manage.window.resize_to(1600, 1050)
  driver.manage.window.maximize
  #class_instantiation
end

after do
  @driver.quit
end

# List the objects that need to be created for the page objects.

#def class_instantiation
 # @custom_driver = DriverFactory.new(@driver)
 # @home_page = HomePage.new(@driver, @custom_driver)
#end