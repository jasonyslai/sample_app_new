require 'spec_helper'

describe ApplicationHelper do

	describe "full_title" do

		it "should include the page title" do
			expect(full_title('')).to match(/^Ruby on Rails Tutorial/)
			expect(full_title('Home')).to match(/^Ruby on Rails Tutorial | Home/)
			expect(full_title('Help')).to match(/^Ruby on Rails Tutorial | Help/)
			expect(full_title('Contact Us')).to match(/^Ruby on Rails Tutorial | Contact Us/)
			expect(full_title('About')).to match(/^Ruby on Rails Tutorial | About/)
		end

		it "should include the base title" do
			expect(full_title('')).to match(/^Ruby on Rails Tutorial/)
		end

		#it "should not include a bar for the home page" do
		#	expect(full_title("").not_to match(/\|/)
		#end
	end
end