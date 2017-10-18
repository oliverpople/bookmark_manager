feature 'Adding links' do
  scenario 'adding the site\'s address and title to my bookmark manager' do
    visit '/links/new'
      fill_in :title, with: 'snakers'
      fill_in :url, with: 'makers.com'
      click_button 'Submit'
      expect(page).to have_content 'snakers'
    end
end
