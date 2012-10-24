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