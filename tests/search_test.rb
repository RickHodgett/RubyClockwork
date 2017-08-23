require 'selenium-webdriver'
require 'test/unit'
require_relative '../pages/home_page'

#def class_instantiation
 # @custom_driver = DriverFactory.new(@driver)
 # @home_page = HomePage.new(@driver, @custom_driver)
# end
# Test the global site search
#class SearchTest < HomePage
# @driver = Selenium::WebDriver::Driver.for :chrome
#@driver.manage.window.resize_to(1600, 1050)
#@driver.manage.window.maximize
#class_instantiation

# @home_page = HomePage.new(@driver, @custom_driver)

test do
  driver.get "https://www.clockwork.com"
end






