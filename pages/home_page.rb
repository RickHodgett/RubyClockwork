require 'selenium-webdriver'
require 'selenium-more'
require 'test/unit'
require_relative '../support/drive_factory'
# Homepage object
class HomePage < DriverFactory
  include Test::Unit::Assertions

  def initialize(driver, customer_driver)
    @driver = driver
    @custom_driver = customer_driver
    @search_btn = driver.find_element(:xpath, '//*[@id="trapdrawer-item-1"]/nav/ul/li[7]/a')
    @search_field = driver.find_element(:id, 'search_field')
  end

  # WebElements



  def search_click_and_clear
    @search_btn.click
    @search_field.clear
  end

  def search_send_keys(search_term)
    @search_field.action.send_keys(search_term)
  end
end