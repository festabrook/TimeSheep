require 'spec_helper'

describe "Welcome" do
subject { page }

  describe "Home page" do
  	before {visit root_path}
    it {should have_selector('h1', :text => 'Welcome')}
    it {should have_selector('title', :text => "Home")}
    it {should have_selector('p', :text => "Please login to track your hours.")}
    it {should have_selector('input', :name => "login")}
  end

  describe "About page" do
  	before{visit about_path}
    it {should have_selector('h1', :text => 'About This Application')}
    it {should have_selector('title', :text => "About This Application")}
  end
end