require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1',    text: 'Sign up') }
  end
  describe "edit" do
  	let(:user) {FactoryGirl.create(:user)}
  	before {visit edit_user_path(user)}
  end
end