feature 'Viewing links' do
  scenario 'User see existing links to their favourite sites on the links page' do
    Link.create(url: 'http://www.google.com', title: 'Google')

    visit '/links'
    expect(page.status_code).to eq 200
    within 'ul#links' do
      expect(page).to have_content('Google')
    end
  end
end
