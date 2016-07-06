require 'rails_helper'

feature "Creating a new note" do
	before do
		sign_in
		click_link 'New Note'
	end

	it "should display new note form" do
		find_field('Name')
		find_field('Body')
		find_button('Create')
	end


end