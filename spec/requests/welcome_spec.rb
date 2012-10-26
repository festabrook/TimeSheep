require 'spec_helper'

describe "Welcome" do

  describe "GET /welcome" do

    it "should have the h1 'Welcome'" do
      visit '/welcome/home'
      page.should have_selector('h1', :text => 'Welcome')
    end

    it "should have the title 'Home'" do
      visit '/welcome/home'
      page.should have_selector('title', :text => "Home")
    end

    it "should have introductory text" do
    	visit '/welcome/home'
    	page.should have_selector('p', :text => "Please login to track your hours.")
    end

    it "should have a login text box" do
    	visit '/welcome/home'
    	page.should have_selector('textbox', :name => "login")
    end
  end

  describe "About page" do

    it "should have the h1 'About This Application'" do
      visit '/welcome/about'
      page.should have_selector('h1', :text => 'About This Application')
    end

    it "should have the title 'About This Application'" do
      visit '/welcome/about'
      page.should have_selector('title', :text => "About This Application")
    end
  end
end