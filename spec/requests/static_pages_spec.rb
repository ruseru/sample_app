require 'spec_helper'

describe 'Home Page' do
  it "should have content 'Sample App'" do
  	visit '/static_pages/home'
  	page.should have_content('HOME')
  end

  it "should have the correct title" do
  	visit '/static_pages/home'
  	page.should have_selector('title',
  		:text => "Sample | Home")
  end
end

describe 'Help Page' do
  it "should have content 'HELP'" do
  	visit '/static_pages/help'
  	page.should have_content('HELP')
  end

   it "should have the correct title" do
  	visit '/static_pages/help'
  	page.should have_selector('title',
  		:text => "Sample | Help")
  end
end

describe "'About us' page" do
  it "should have content 'About the company'" do
  	visit '/static_pages/about'
  	page.should have_content('COMPANY')
  end

  it "should have the correct heading" do
  	visit '/static_pages/about'
  	page.source.should have_selector('h1',
  		:text => "page for the")
  end
end

describe "'Contact' page" do
  it "should have content 'About the company'" do
  	visit '/static_pages/contact'
  	page.should have_content('CONTACT')
  end

  it "should have the correct title" do
  	visit '/static_pages/contact'
  	page.source.should have_selector('title',
  		:text => "Contact")
  end
end



