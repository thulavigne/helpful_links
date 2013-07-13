require 'spec_helper'

feature "Deleting links" do
  scenario "Deleting a link" do
    Factory(:link, :title => "TextMate 2")
    visit "/"
    click_link "TextMate 2"
    click_link "Delete Link"
    page.should have_content("Link has been deleted.")
    visit "/"
    page.should_not have_content("TextMate 2")
  end
end
