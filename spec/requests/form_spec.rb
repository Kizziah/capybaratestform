require 'spec_helper'

describe Form do

	it "fill in form",  :js => true  do
		visit new_client_path
		fill_in 'Firstname', :with => 'John'
		fill_in 'Lastname', :with => 'Doe'
		fill_in 'Phonenumber', :with => '5553332222'
		fill_in 'Email', :with => 'hello@hello.com'
		find_field('Firstname').value.should == 'John'
		click_button("Save")
		# save = page.find('.actions input')
		# save.click
		page.should have_content "Client was successfully created"
	end	

	it "fill in form with invalid Phonenumber",  :js => true  do
		visit new_client_path
		fill_in 'Firstname', :with => ''
		fill_in 'Lastname', :with => 'Doe'
		fill_in 'Phonenumber', :with => '555333222'
		fill_in 'Email', :with => 'hello@hello.com'
		click_button("Save")
		page.should_not have_content "Client was successfully created"
	end
end
