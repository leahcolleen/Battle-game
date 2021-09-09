feature 'enter names via form' do
  scenario 'submitting names to form' do
    visit('/')
    fill_in :player_1_name, with: 'Jess'
    fill_in :player_2_name, with: 'Leah'
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_content('Jess vs Leah')
  end
end