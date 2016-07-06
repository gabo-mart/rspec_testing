require 'rails_helper'


feature "Signing in" do
	before do
		@user = User.create(username: 'John', password: 'password')
		Note.create(user: @user, name: 'super secret secret', body: 'psst hi')

		visit root_path
		fill_in('Username', with: 'John')
		fill_in('Password', with: 'password')
		click_button('Log in')
	end

	it 'displays a list of my notes' do
		expect(page).to have_content("My Notes")
		expect(page).to have_content("super secret secret")
	end

	it 'displays a link to add a new note' do
		find_link 'New Note'
	end

	it 'displays a button to sign out' do
		find_link('Logout')
	end
	
end
