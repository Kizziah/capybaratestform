require 'spec_helper'

describe Form do

	it "fill in form",  :js => true  do
		visit "/"
		fill_in 'First Name', :with => 'John'
		fill_in 'Last Name', :with => 'Doe'
		# fill_in 'Phonenumber', :with => '5553332222'
		# fill_in 'Email', :with => 'hello@hello.com'
		find_field('Firstname').value.should == 'John'
		click_button("Save")
		# save = page.find('.actions input')
		# save.click
		# page.should have_content "Client was successfully created"
	end
end
