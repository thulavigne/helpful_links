require 'spec_helper'
feature 'Creating Links' do

  before do
    visit '/'
    click_link 'New Link'
  end

  scenario "can create a link" do
    fill_in 'Title', :with => 'TextMate 2'
    click_button 'Create Link'
    page.should have_content('Link has been created. Yay!')

    link = Link.find_by_title("TextMate 2")
    page.current_url.should == link_url(link)
    title = "TextMate 2 - Helpful Links"
    find("title").should have_content(title)
  end

  scenario "can not create a link without a title" do
    click_button 'Create Link'
    page.should have_content("Link has not been created.")
    page.should have_content("Title can't be blank")
  end
end
