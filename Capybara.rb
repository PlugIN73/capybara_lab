# encoding: utf-8
require 'capybara'
require 'capybara/rspec'

describe "the signup process", :type => :feature do
  before :each do
    @session = Capybara::Session.new(:selenium)
    @session.visit('https://coderwall.com/plugin73')
  end

  it "should have kaize team" do
    @session.should have_content('kaize')
  end

  it "should visit kaize team" do
    @session.visit('https://coderwall.com/team/kaize')
    @session.should have_content('Beautiful office')
  end
end
