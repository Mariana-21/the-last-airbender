require 'rails_helper'


describe "As a user" do 
  describe "When I visit '/' and select 'Fire Nation' from the field" do
    it "and i click 'search for members I should see all the members" do
      visit '/'

      select "Fire Nation", from: :nation
      click_on "Search For Members"

      expect(current_path).to eq(search_path) 
    end 
  end
end
# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members“
# Then I should be on page “/search”
# Then I should see the total number of people who live in the Fire Nation. (i.e. 20)
# And I should see a list with the detailed information for the 20 members of the Fire Nation.

# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies and a list of enemies
# - Any affiliation that the member has