feature 'Atacking' do
  scenario 'attack player 2 ' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Matt attacked Kasia'
  end
end


feature 'Attacking' do
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    # click_link 'OK'
    expect(page).not_to have_content 'Kasia :60HP'
    expect(page).to have_content 'Kasia :50HP'
  end
end
