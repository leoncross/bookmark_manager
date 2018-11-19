feature 'visit main page' do
  scenario 'respond to hello wolrd' do
    visit('/')
    expect(page).to have_content "Hello World"
  end
end
