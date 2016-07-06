module SignInHelper 
	def sign_in
		@user = User.create(username: 'John', password: 'password')
		visit root_path
		fill_in('Username', with: 'John')
		fill_in('Password', with: 'password')
		click_button('Log in')
	end
end
