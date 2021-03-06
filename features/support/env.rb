require "capybara/cucumber"
require "capybara"
require "selenium-webdriver"
require "site_prism"
require "rspec"
require "cucumber"
require "faker"
require_relative "helper.rb"

BROWSER = ENV["BROWSER"]

World(Helper)

Capybara.register_driver :selenium do |app|
  if BROWSER.eql?("chrome")
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  elsif BROWSER.eql?("chrome_headless")
    Capybara::Selenium::Driver.new(app, :browser => :chrome,
                                        desired_capabilites: Selenium::WebDriver::Remote::Capabilities.chrome(
                                          "chromeOptions" => { "args" => ["--headless", "disable-gpu"] },

                                        ))
  elsif BROWSER.eql?("firefox")
    Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette => true)
  elsif BROWSER.eql?("firefox_headless")
    browser_options - Selenium::WebDriver::Firefox::Options.new(args: ["--headless"])
    Capybara::Selenium::Driver.new(app, :browser => :firefox, option: browser_options)
  end
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = "http://automationpractice.com"
end

Capybara.default_max_wait_time = 50
Capybara.page.driver.browser.manage.window.maximize
