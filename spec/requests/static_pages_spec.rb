require 'spec_helper'

describe "StaticPages" do
	let(:base_title) {"Ruby on Rails Tutorial Sample App"}
	  describe "Home page" do
  		it "should have base title " do
  			visit '/static_pages/home'
  			page.should have_selector('title',:text => 'Ruby on Rails Tutorial Sample App')
 		  end
 		  it "should not have custom page title" do
      		visit '/static_pages/home'
      		page.should_not have_selector('title',
                        :text => "| Home")
    	end
   	end
  	describe "Help Page" do
      it "should have base title " do
        visit '/static_pages/home'
        page.should have_selector('title',:text => 'Ruby on Rails Tutorial Sample App')
      end
      it "should not have custom page title" do
          visit '/static_pages/home'
          page.should_not have_selector('title',
                        :text => "| Help")
      end
  	end
  	describe "About Page" do
      it "should have base title " do
        visit '/static_pages/home'
        page.should have_selector('title',:text => 'Ruby on Rails Tutorial Sample App')
      end
      it "should not have custom page title" do
          visit '/static_pages/home'
          page.should_not have_selector('title',
                        :text => "| About Us")
      end
  	end

    describe "Contact page" do
      it "should have base title " do
        visit '/static_pages/home'
        page.should have_selector('title',:text => 'Ruby on Rails Tutorial Sample App')
      end
      it "should not have custom page title" do
          visit '/static_pages/home'
          page.should_not have_selector('title',
                        :text => "| contact")
      end
  	end

end

