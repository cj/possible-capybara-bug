require File.dirname(__FILE__) + '/../spec_helper'

describe "Main app" do

  before do
    visit '/'
  end

  context "Superuser" do


    it "Should login with correct info" do
      # fill_in "user[login]", with: 'cj'
      # fill_in "user[password]", with: 'pass'
      # click_button "Sign in"
      page.should have_content "Overview"
    end

    describe "Creating receptionist", :js do
      before do
        click_link 'Users'
        click_link 'Add Receptionist'
      end

      it "Should popup" do
        page.should have_css "body.modal-open"
      end

      it "Should have the correct fields" do
        print page.html
        # save_and_open_page
        within '#receptionist_form' do
          page.should have_select 'user[acd_api_id]'
          page.should have_select 'Staff Member'
        end
      end
    end
  end

end