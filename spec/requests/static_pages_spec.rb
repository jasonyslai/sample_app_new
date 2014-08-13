require 'spec_helper'

describe "Static Pages" do

	#define a variable
	#let(:base_title) {"Ruby on Rails Tutorial"}

  subject { page }

  describe "Home page" do

    before { visit root_path }

    it { should have_content('Home')}
    it { should have_title(full_title(''))}# | Home
    it { should_not have_title('| Home')}

  end

  describe "Help page" do

    before { visit help_path }
    it { should have_title(full_title('Help'))}
    it { should have_content('Help')}

  end

	describe "Contact page" do

    before { visit contact_path }
    it { should have_title(full_title('Contact'))}
    it { should have_content('Contact')}

	end

  describe "About page" do

    before { visit about_path }
    it { should have_title(full_title('About'))}
    it { should have_content('About')}
    
  end
end
