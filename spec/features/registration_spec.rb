require 'rails_helper'

feature 'Registering' do

	before do
		visit registration_path
	end

	it "displays a registration form" do
		find_field('Username')
		find_field('Password')
		find_field('Password confirmation')
	end


	it "and clicking sign up creates a new user" do
		fill_in('Username', :with => 'John')
		fill_in('Password', :with => 'secret password')
		fill_in('Password confirmation', :with => 'secret password')
		click_button('Sign up')
		expect(User.find_by(username: "John")).to be_a(User)
	end

end