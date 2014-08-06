require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home')
    end

    it "should have the title 'Home'" do
    	visit '/static_pages/home'
    	expect(page).to have_title("Ruby on Rails Tutorial | Home")
		end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
    	visit '/static_pages/help'
    	expect(page).to have_title("Ruby on Rails Tutorial | Help")
		end
  end

	describe "Contact page" do
		it "should have the content 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_content('Contact')
		end

		it "should have the title 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_title("Ruby on Rails Tutorial | Contact")
		end
	end

end