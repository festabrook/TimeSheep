require 'spec_helper'

describe "Page Layouts" do

  let(:base_title) { "Time Logging Application" }

  describe "Home page" do

    it "should have the h1 'Welcome'" do
      visit '/home'
      page.should have_selector('h1', :text => 'Welcome')
    end

    it "should have the title 'Home'" do
      visit '/home'
      page.should have_selector('title', :text => "#{base_title} | Home")
    end
  end

  describe "About page" do

    it "should have the h1 'About This Application'" do
      visit '/about'
      page.should have_selector('h1', :text => 'About This Application')
    end

    it "should have the title 'About This Application'" do
      visit '/about'
      page.should have_selector('title', :text => "#{base_title} | About This Application")
    end
  end
end