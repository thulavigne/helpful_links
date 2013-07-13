require 'spec_helper'

feature "Viewing links" do
  scenario "Listing all links" do
    link = Factory.create(:link, :title => "TextMate 2")
    visit '/'
    click_link 'TextMate 2'
    page.current_url.should == link_url(link)
  end
end
