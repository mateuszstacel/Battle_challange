require 'player'

describe Player do
  subject(:matt) { Player.new('Matt') }
  subject(:kasia) { Player.new('Kasia') }

  describe '#name' do
    it 'returns the name' do
      expect(matt.name).to eq 'Matt'
    end
  end

  describe '#hit_points' do
    it 'return the hit points' do
      expect(matt.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end


  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { matt.receive_damage }.to change { matt.hit_points }.by (-10)
    end
  end
end
