require 'spec_helper'

describe "StaticPages" do
	  describe "Home page" do
  		it "should have base title " do
  			visit root_path
  			page.should have_selector('title',:text => 'Ruby on Rails Tutorial Sample App')
 		  end
 		  it "should not have custom page title" do
      		visit root_path
      		page.should_not have_selector('title',
                        :text => "| Home")
    	end
   	end
  	describe "Help Page" do
      it "should have base title " do
        visit help_path
        page.should have_selector('title',:text => 'Ruby on Rails Tutorial Sample App')
      end
      it "should not have custom page title" do
          visit help_path
          page.should_not have_selector('title',
                        :text => "| Help")
      end
  	end
  	describe "About Page" do
      it "should have base title " do
        visit about_path
        page.should have_selector('title',:text => 'Ruby on Rails Tutorial Sample App')
      end
      it "should not have custom page title" do
          visit about_path
          page.should_not have_selector('title',
                        :text => "| About Us")
      end
  	end

    describe "Contact page" do
      it "should have base title " do
        visit contact_path
        page.should have_selector('title',:text => 'Ruby on Rails Tutorial Sample App')
      end
      it "should not have custom page title" do
          visit contact_path
          page.should_not have_selector('title',
                        :text => "| contact")
      end
  	end

end

