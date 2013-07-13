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
  end
end
