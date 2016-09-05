require 'spec_helper'
require 'selenium-webdriver'

RSpec.describe "Selenium Grid Test" do

  before do
    @driver = Selenium::WebDriver.for(
    :remote,
    url: 'http://localhost:4444/wd/hub',
    desired_capabilities: :chrome)
  end

  after do
    @driver.quit
  end

  it "runs a simple test" do
    @driver.get 'http://the-internet.herokuapp.com/'
    expect(@driver.title).to eq('The Internet')
  end

  it "recoves the password" do
    @driver.get 'http://the-internet.herokuapp.com/forgot_password'
    @driver.find_element(:id, "email").send_keys "lindomar@teste.com"
    @driver.find_element(:id, "form_submit").click

    expect(@driver.find_element(:id, "content").text).to eq("Your e-mail's been sent!")
  end
end
