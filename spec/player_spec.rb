require_relative "../src/player"

describe "Player" do

  it "knows if it doesn't have mana" do
    player = Player.new

    answer = player.has_mana?

    expect(answer).to eq(false)
  end

  it "recieve mana when it is activate" do
    player = Player.new

    player.activate

    expect(player.has_mana?).to eq(true)
  end

  it "has a maximun mana" do
    player = Player.new

    answer = player.full_mana?

    expect(answer).to eq(false)
  end

  it "has full mana after a lot of activations" do
    a_lot = 10
    player = Player.new

    a_lot.times do
      player.activate
    end

    expect(player.full_mana?).to eq(true)
  end

  it "can't have more mana than the maximun" do
    a_lot = 20
    player = Player.new

    a_lot.times do
      player.activate
    end

    expect(player.full_mana?).to eq(true)
  end
end
