require 'game'

describe Game do

subject(:game) { described_class.new }
let(:matt) { double :player }
let(:kasia) { double :player }

describe '#attack' do
  it 'damages the player' do
    expect(kasia).to receive(:receive_damage)
    game.attack(kasia)
  end
end

end
