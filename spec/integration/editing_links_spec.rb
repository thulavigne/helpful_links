require 'spec_helper'
feature "Editing Links" do

  before do
    Factory(:link, :title => "TextMate 2")
    visit "/"
    click_link "TextMate 2"
    click_link "Edit Link"
  end

  scenario "Updating a link" do
     fill_in "Title", :with => "TextMate 2 beta"
    click_button "Update Link"
    page.should have_content("Link has been updated.")
  end

  scenario "Updating a project with invalid attributes is bad" do
    fill_in "Title", :with => ""
    click_button "Update Link"
    page.should have_content("Link has not been updated.")
  end

end
