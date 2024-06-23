require 'selenium-webdriver'
require_relative '../models/LoginPage.rb'

describe 'Swag Labs Demo' do
  before do
    @driver = Selenium::WebDriver.for :chrome
  end

  example 'Login' do
    loginPage = LoginPage.new(@driver)
    @driver.get('https://www.saucedemo.com/')

    loginPage.login('standard_user', 'secret_sauce');
    expect(loginPage.getPageTitle).to include('Swag Labs')
  end
end