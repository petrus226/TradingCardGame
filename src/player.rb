class Player
  INITIAL_MANA = 0
  MAXIMUN_MANA = 10
  def initialize
    @mana = INITIAL_MANA
  end

  def has_mana?
    @mana != 0
  end

  def full_mana?
    @mana == MAXIMUN_MANA
  end

  def activate
    increase_mana
  end

  private

  def increase_mana
    @mana += 1 if !full_mana?
  end
end
