require 'spec_helper'
feature 'Creating Links' do
  scenario "can create a link" do
    visit '/'
    click_link 'New Link'
    fill_in 'Title', :with => 'TextMate 2'
    fill_in 'Link', :with => 'A url'
    fill_in 'Description', :with => "A text-editor for OS X"
    click_button 'Create Link'
    page.should have_content('Link has been created. Yay!')
    link = Link.find_by_title("TextMate 2")
    page.current_url.should == link_url(link)
    title = "TextMate 2 - Helpful Links"
    find("title").should have_content(title)
  end
end
