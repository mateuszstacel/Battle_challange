require 'spec_helper'

def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Matt'
  fill_in :player_2_name, with: 'Kasia'
  click_button 'Submit'
end
