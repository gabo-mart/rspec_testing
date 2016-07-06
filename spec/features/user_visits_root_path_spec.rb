require 'rails_helper'

feature 'Visiting Root' do

	before do 
		visit root_path
	end

	it 'displays a sign in form' do
	  find_field('username')
	  find_field('password')
	end

  it 'displays the text "Welcome"' do
  	expect(page).to have_content('Welcome')
  end

  it 'displays a "Register" link' do
  	find_link("Register")
  end

  it 'and clicking Register goes to registration path' do
  	click_link("Register")
  	expect(current_path).to eq(registration_path)
  end

end