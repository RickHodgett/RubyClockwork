require 'selenium-webdriver'

module EnvironmentSettings
  class << self

    def browser(type)
      case type
        when 'chrome'
          Selenium::WebDriver.for :chrome
        when 'firefox'
          Selenium::WebDriver.for :firefox
        when 'safari'
          Selenium::WebDriver.for :safari
        else
          puts 'Please specify a browser to test in.'
      end
    end
  end
end

module Settings

  def logger(boolean)
    case boolean
      when true
        Selenium::WebDriver.logger.level = :info
      else
        puts 'logger off'
    end
  end
end